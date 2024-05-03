# Network

Display the range of TCP ports that are excluded from dynamic port allocation

```Bash
netsh int ip show excludedportrange protocol=tcp
```

Display active network connections, listening ports, and associated processes & filter the output of port number

```Bash
netstat -ano | findstr :6000
```

Terminate a process with a Process ID (PID) of the network process

```Bash
taskkill /PID 20044 /F
```
