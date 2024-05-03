# Cryptography and verification commands

- [Cryptography and verification commands](#cryptography-and-verification-commands)
  - [Introduction](#introduction)
  - [Standards](#standards)
  - [Common combinations](#common-combinations)
  - [Conversion](#conversion)
  - [Verification/Inspection](#verificationinspection)
  - [Tips for recognising](#tips-for-recognising)

## Introduction

It happens that there are many standards for storing cryptography materials (key, certificate, ...) and it isn't always obvious to know which standard is used by just looking at file name extension or file content. There are bunch of questions on stackoverflow asking about how to convert from PEM to PKCS#8 or PKCS#12, while many tried to answer the questions, those answers may not help because the correct answer depends on the content inside the PEM file. That is, a PEM file can contain many different things, such as an X509 certificate, a PKCS#1 or PKCS#8 private key. The worst-case scenario is that someone just store a non-PEM content in "something.pem" file.

When working with cryptography material, I usually follow the 3 steps below:

- Inspect what format the material is in
- Understand what format it is required for (for example: logstash server need a PKCS#8 keystore for TLS communication)
- Convert the material

This gist contains my own understanding about different cryptography standards and their uses, so it's surely imperfect. Feel free to contact me for any improvement.

Enjoy!

## Standards

| Standards | Content format |File encoding | Possible content
| --------- | -------------- | ------------ | --------------- |
| X509 | X | | Certificates |
| PKCS#1 | X | | RSA keys (public/private) |
| PKCS#7 | X | | Certificates, CRLs |
| PKCS#8 | X | | Private keys, encrypted private keys |
| PKCS#12 | X | | Certificates, CRLs, private keys |
| JKS | X | | Certificates, private keys |
| PEM | | X | |
| DER | | X | |

## Common combinations

Some formatted contents are not written into file directly as a binary stream. They are first encoded using encoding rules before writing to file. Below is the list of common combinations of content format and encoding rules:

| Content \ Encoding | PEM (\*) | DER (\*\*) | Binary |
| ------------------ | -------- | ---------- | ------ |
| X509 | X | X | |
| PKCS#1 | X | X | |
| PKCS#7 (\*\*\*) | X | X | |
| PKCS#8 | X | X | |
| PKCS#12 (\*\*\*) | | | X |
| JKS (\*\*\*) | | | X |

(\*) *You can concatenate multiple PEM files into a big PEM that contains multiple materials, such as a complete certificate chain.*

(\*\*) *You can’t simply concatenate DER file to create single DER file → final file may not be readable by other software. If you need to store multiple materials, check (\*) or (\*\*\*).*

(\*\*\*) *These formats are designed to store multiple materials.*

## Conversion

| Conversion | Command |
| ---------- | ------- |
| PKCS#1 → PKCS#8 | `openssl pkcs8 -in key_pk1.pem -topk8 -out key_pk8.pem` |
| PKCS#8 → PKCS#1 | `openssl pkcs8 -in key_pk8.pem -traditional -nocrypt -out key_pk1.pem` <br> `openssl rsa -in key_pk8.pem -out key_pk1.pem` |
| X509 → PKCS#7 | `openssl crl2pkcs7 -nocrl -certfile certificate_x509.pem -out certificate.p7b` |
| PKCS#7 → X509 | `openssl pkcs7 -print_certs -in certificate.p7b -out certificate_x509.pem` |
| X509 PEM → DER (\*) | `openssl x509 -in certificate_x509.pem -outform DER -out certificate_x509.der` |
| PKCS#1/8 → PKCS#12 | `openssl pkcs12 -export -nocerts -inkey key.pem -out keystore.p12` |
| PKCS#1/8 + X509 → PKCS#12 | `openssl pkcs12 -export -inkey key.pem -in cert.pem -out keystore.p12` |
| PKCS#12 → PKCS#8 (\*\*) | `openssl pkcs12 -info -in keystore.p12 -nodes -nocerts -out key_pk8.pem` |
| PKCS#12 → JKS | `keytool -importkeystore -srckeystore keystore.p12 -srcstoretype PKCS12 -destkeystore keystore.jks -deststoretype JKS` |
| JKS → PKCS#12 | `keytool -importkeystore -srckeystore keystore.jks -srcstoretype JKS -destkeystore keystore.p12 -deststoretype PKCS12` |
| JKS → X509 PEM | `keytool -list -keystore keystore.jks -rfc -alias alias` |
| X509 PEM → JKS | `keytool -import -alias alias -keystore keystore.jks -file certificate.pem` |

(\*) *Similar commands can be used to convert other file (PKCS#1, PKCS#7, PKCS#8) from PEM encoding to DER encoding and vice versa → just need to use the right engine, e.g. x509 for X509, rsa for PKCS#1, …*

(\*\*) *Only for extracting private key, the output keys are not encrypted. Remove ‘-nodes’ to encrypt output keys.*

## Verification/Inspection

| Content | Command |
| ------- | ------- |
| X509 | `openssl x509 -text -in certificate_x509.cer` <br> `openssl x509 -text -in certificate_x509.der -inform DER` |
| PKCS#1 | `openssl rsa -text -in key_pk1.pem` <br> `openssl rsa -text -in key_pk1.der -inform DER` |
| PKCS#7 | `openssl pkcs7 -text -in certificate.p7b` <br> `openssl pkcs7 -text -in certificate_p7.der -inform DER` |
| PKCS#8 | `openssl pkcs8 -in key_pk8.key -nocrypt` <br> `openssl pkcs8 -in key_pk8.der -nocrypt -inform DER` |
| PKCS#12 | `openssl pkcs12 -info -in keystore.p12` <br> `keytool -list -keystore keystore.p12` |
| JKS | `keytool -list -keystore keystore.jks` |

## Tips for recognising

| Content | What to look for |
| ------- | ---------------- |
| PEM-encoded content | • Text file starts with “-----BEGIN …” and ends with “… END …-----”. <br> • File extensions (hopefully): \*.pem, \*.crt, \*.key |
| X509/PEM | `-----BEGIN CERTIFICATE-----` |
| PKCS#1/PEM | `-----BEGIN RSA PRIVATE KEY-----` <br> `-----BEGIN RSA PUBLIC KEY-----` |
| PKCS#7/PEM | • `-----BEGIN PKCS7-----` <br> • File extensions: \*.p7, \*.p7a, \*.p7b, \*.p7c |
| PKCS#8/PEM | `-----BEGIN PRIVATE KEY-----` <br> `-----BEGIN ENCRYPTED PRIVATE KEY-----` |
| PKCS#12 | File extensions: \*.p12, \*.pfx |
| JKS | File extension: \*.jks |
| DER | File extensions: \*.der, \*.cer |

*Note: Use the right file extension when saving your content into file, but don't rely on file extension when reading, use verification/inspection commands whenever possile.*