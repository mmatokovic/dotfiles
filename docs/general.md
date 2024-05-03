# Base URL

JSON API for generating and decoding various matrix codes, including barcodes and QR codes

```Bash
https://api.mmatokovic.dev/v1
```

## Authentication

Every operation on our REST API requires authentication using an API key. Detailed information can be found on our [Authentication page](/authentication).

## Mime Type

All data is sent and received as JSON. The only mime type the API supports is:

```javascript
 application/json
```

API does not define any custom mime types.

You may explicitly set the `Accept` header when you make a request and/or end the path with `.json`.

## Errors

The REST API uses conventional HTTP response codes to indicate the success or failure of an API request, such as 200 for "OK", and 400 for "Bad Request". The full list of status codes used, and errors returned can be found [here](/errors).
