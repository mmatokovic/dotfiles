# Powershell Rosetta Stone

| [CMD]      | [Unix]          | [Powershell]              | Synopsis                                                          |
| ---------- | --------------- | ------------------------- | ----------------------------------------------------------------- |
| HELP       | [man]           | [Get-Help]                | Displays information about commands and concepts.                 |
|            | [apropos]       | [Get-Command]             | Gets all commands.                                                |
|            |                 | [Show-Command]            | Displays PowerShell commands in a graphical window.               |
|            |                 |                           |                                                                   |
|            | [df]            | [Get-PSDrive]             | Gets drives in the current session.                               |
|            | [mount]         | [New-PSDrive]             | Creates temporary and persistent mapped network drives.           |
|            | [umount]        | [Remove-PSDrive]          | Deletes PowerShell drives and disconnects mapped network drives.  |
|            |                 |                           |                                                                   |
| CD         | [pwd]           | [Get-Location]            | Gets information about the current location or a location stack.  |
| CD         | [cd]            | [Set-Location]            | Sets the current working location to a specified location.        |
| MD         | [mkdir]         | [New-Item]                | Creates a new item. (`-ItemType Directory`)                       |
| PUSHD      | [pushd]         | [Push-Location]           | Adds the current location to the top of a location stack.         |
| POPD       | [popd]          | [Pop-Location]            | Changes the current location to the last pushed onto the stack.   |
|            |                 |                           |                                                                   |
| DIR        | [ls]            | [Get-ChildItem]           | Gets the files and folders in a file system drive.                |
|            | [find]          | [Get-ChildItem]           | Gets the files and folders in a file system drive. (`-Name`)      |
|            | -d              | [Test-Path]               | Determines whether all elements of a path exist.                  |
|            | [dirname]       | [Split-Path]              | Returns the specified part of a path.                             |
|            | [basename]      | [Split-Path]              | Returns the specified part of a path. (`-Leaf`)                   |
|            |                 |                           |                                                                   |
| CACLS      | [chown] [chmod] | [Get-Acl]                 | Gets the security descriptor for a resource.                      |
| CACLS      | [chown] [chmod] | [Set-Acl]                 | Changes the security descriptor of a resource.                    |
|            |                 |                           |                                                                   |
|            | [touch]         | [New-Item]                | Creates a new item. (`-ItemType File`)                            |
| COPY       | [cp]            | [Copy-Item]               | Copies an item from one location to another.                      |
| REN        |                 | [Rename-Item]             | Renames an item in a Windows PowerShell provider namespace.       |
| MOVE       | [mv]            | [Move-Item]               | Moves an item from one location to another.                       |
| DEL        | [rm]            | [Remove-Item]             | Deletes files and folders.                                        |
|            | [truncate]      | [Clear-Content]           | Deletes the contents of an item, but does not delete the item.    |
|            |                 |                           |                                                                   |
| CLS        | [clear]         | [Clear-Host]              | Clears the display in the host program.                           |
| SET /P     | [read]          | [Read-Host]               | Reads a line of input from the console.                           |
| ECHO       | [echo]          | [Write-Output]            | Sends the specified objects to the next command in the pipeline.  |
| TYPE       | [cat]           | [Get-Content]             | Gets the contents of an item.                                     |
|            | [head]          | [Get-Content]             | Gets the contents of an item. (`-Head 10`) (`-Wait` for -f)       |
|            | [tail]          | [Get-Content]             | Gets the contents of an item. (`-Tail 10`) (`-Wait` for -f)       |
|            | [tee]           | [Tee-Object]              | Outputs in a file or variable and down the pipeline.              |
| FINDSTR    | [grep]          | [Select-String]           | Finds text in strings and files.                                  |
|            |                 | [Where-Object]            | Selects objects from a collection based on their property values. |
|            | [cut]           | [Select-Object]           | Selects objects from a collection based on their property values. |
| SORT       | [sort]          | [Sort-Object]             | Sorts objects by property values. (`-Unique`)                     |
|            | [uniq]          | [Get-Unique]              | Returns unique items from a sorted list.                          |
|            | [wc]            | [Measure-Object]          | Calculates the numeric properties of objects,or strings.          |
| FC         | [diff]          | [Compare-Object]          | Compares two sets of objects.                                     |
|            | [column]        | [Format-Table]            | Formats the output as a table.                                    |
|            |                 | [Format-List]             | Formats the output as a list of properties on a new line (`*`)    |
|            |                 | [Out-GridView]            | Sends output to an interactive table in a separate window.        |
|            | [lp]            | [Out-Printer]             | Sends output to a printer.                                        |
|            | [jq]            | [ConvertFrom-Json]        | Converts a JSON-formatted string to a custom object.              |
|            | [csvtool]       | [ConvertFrom-Csv]         | Converts object properties in comma-separated value format.       |
|            |                 |                           |                                                                   |
| SYSTEMINFO | [uname]         | [Get-ComputerInfo]        | Gets a consolidated object of system properties.                  |
| SHUTDOWN   | [shutdown]      | [Stop-Computer]           | Stops (shuts down) local and remote computers.                    |
|            | [reboot]        | [Restart-Computer]        | Restarts the operating system on local and remote computers.      |
|            |                 |                           |                                                                   |
|            | [systemctl]     | [Get-Service]             | Gets the services on the computer.                                |
|            | [systemctl]     | [Start-Service]           | Starts one or more stopped services.                              |
|            | [systemctl]     | [Stop-Service]            | Stops one or more running services.                               |
|            |                 |                           |                                                                   |
| TASKLIST   | [ps]            | [Get-Process]             | Gets the processes running on a local or remote computer.         |
| TASKKILL   | [kill]          | [Stop-Process]            | Stops one or more running processes.                              |
|            | [time]          | [Measure-Command]         | Measures the time it takes to run script blocks and cmdlets.      |
|            | [strace]        | [Trace-Command]           | Traces of the specified expression or command.                    |
| TIMEOUT    | [sleep]         | [Start-Sleep]             | Suspends the activity for the specified period of time.           |
|            |                 |                           |                                                                   |
| PING       | [ping]          | [Test-Connection]         | Sends ICMP echo request ("pings") to one or more computers.       |
| TRACERT    | [traceroute]    | [Test-Connection]         | Sends ICMP echo request ("pings") to one or more computers.       |
| NSLOOKUP   | [dig]           | [Resolve-DnsName]         |                                                                   |
| IPCONFIG   | [ip] addr       | [Get-NetIPConfiguration]  | Gets IP network configuration.                                    |
|            |                 | [Get-NetIPAddress]        | Gets the IP address configuration.                                |
| ROUTE      | [ip] route      | [Get-NetRoute]            | Gets the IP route information from the IP routing table.          |
| ARP        | [ip] neighbor   | [Get-NetNeighbor]         | Gets neighbor cache entries.                                      |
| NETSTAT    | [ss]            | [Get-NetTCPConnection]    | Gets TCP connections.                                             |
|            |                 |                           |                                                                   |
|            | [curl]          | [Invoke-WebRequest]       | Gets content from a web page on the Internet.                     |
| DATE       | [date]          | [Get-Date]                | Gets the current date and time.                                   |
|            | $RANDOM         | [Get-Random]              | Gets a random number, or selects objects from a collection.       |
|            |                 |                           |                                                                   |
| CLIP       | [xclip]         | [Get-Clipboard]           | Gets the contents of the clipboard.                               |
| CLIP       | [xclip]         | [Set-Clipboard]           | Sets the contents of the clipboard.                               |
|            |                 |                           |                                                                   |
| NET        | [useradd]       | [New-LocalUser]           | Creates a local user account.                                     |
| NET        | [userdel]       | [Remove-LocalUser]        | Deletes local user accounts.                                      |
| NET        | [groupadd]      | [New-LocalGroup]          | Creates a local security group.                                   |
| NET        | [groupdel]      | [Remove-LocalGroup]       | Deletes local security groups.                                    |
| NET        | [groupmod]      | [Add-LocalGroupMember]    | Adds members to a local group.                                    |
| NET        | [groupmod]      | [Remove-LocalGroupMember] | Removes members from a local group.                               |
|            |                 |                           |                                                                   |
|            |                 | [Get-Member]              | Gets the properties and methods of objects.                       |
|            |                 | [Select-Object]           | Selects objects or object properties.                             |
|            |                 | [ForEach-Object]          | Operates against each item in a collection of input objects.      |
|            |                 | [Where-Object]            | Selects objects from a collection based on their property values. |
|            |                 | [Group-Object]            | Groups objects with the same value for specified properties.      |


[CMD]:                    	https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/windows-commands
[Unix]:                   	http://manpages.ubuntu.com/
[PowerShell]:             	https://docs.microsoft.com/en-us/powershell/module/Microsoft.PowerShell.Core/

[Add-LocalGroupMember]:   	https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.localaccounts/add-localgroupmember
[Clear-Content]:          	https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/clear-content
[Clear-Host]:             	https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/clear-host
[Compare-Object]:         	https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/compare-object
[ConvertFrom-Csv]:        	https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/convertfrom-csv
[ConvertFrom-Json]:       	https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/convertfrom-json
[Copy-Item]:              	https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/copy-item
[ForEach-Object]:         	https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/foreach-object
[Format-List]:            	https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/format-list
[Format-Table]:           	https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/format-table
[Get-Acl]:                	https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.security/get-acl
[Get-ChildItem]:          	https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/get-childitem
[Get-Clipboard]:          	https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/get-clipboard
[Get-Command]:            	https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/get-command
[Get-ComputerInfo]:       	https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/get-computerinfo
[Get-Content]:            	https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/get-content
[Get-Date]:               	https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/get-date
[Get-Help]:               	https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/get-help
[Get-Location]:           	https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/get-location
[Get-Member]:             	https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/get-member
[Get-NetIPAddress]:       	https://docs.microsoft.com/en-us/powershell/module/nettcpip/get-netipaddress
[Get-NetIPConfiguration]: 	https://docs.microsoft.com/en-us/powershell/module/nettcpip/get-netipconfiguration
[Get-NetNeighbor]:        	https://docs.microsoft.com/en-us/powershell/module/nettcpip/get-netneighbor
[Get-NetRoute]:           	https://docs.microsoft.com/en-us/powershell/module/nettcpip/get-netroute
[Get-NetTCPConnection]:   	https://docs.microsoft.com/en-us/powershell/module/nettcpip/get-nettcpconnection
[Get-Process]:            	https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/get-process
[Get-PSDrive]:            	https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/get-psdrive
[Get-Random]:             	https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/get-random
[Get-Service]:            	https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/get-service
[Get-Unique]:             	https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/get-unique
[Group-Object]:           	https://docs.microsoft.com/en-us/powershell/module/Microsoft.PowerShell.Utility/Group-Object
[Invoke-WebRequest]:      	https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/invoke-webrequest
[Measure-Command]:        	https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/measure-command
[Measure-Object]:         	https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/measure-object
[Move-Item]:              	https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/move-item
[New-Item]:               	https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/new-item
[New-LocalGroup]:         	https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.localaccounts/new-localgroup
[New-LocalUser]:          	https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.localaccounts/new-localuser
[New-PSDrive]:            	https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/new-psdrive
[Out-GridView]:           	https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/out-gridview
[Out-Printer]:            	https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/out-printer
[Pop-Location]:           	https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/pop-location
[Push-Location]:          	https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/push-location
[Read-Host]:              	https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/read-host
[Remove-Item]:            	https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/remove-item
[Remove-LocalGroup]:      	https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.localaccounts/remove-localgroup
[Remove-LocalGroupMember]:	https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.localaccounts/remove-localgroupmember
[Remove-LocalUser]:       	https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.localaccounts/remove-localuser
[Remove-PSDrive]:         	https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/remove-psdrive
[Rename-Item]:            	https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/rename-item
[Resolve-DnsName]:        	https://docs.microsoft.com/en-us/powershell/module/dnsclient/resolve-dnsname
[Restart-Computer]:       	https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/restart-computer
[Select-Object]:          	https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/select-object
[Select-String]:          	https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/select-string
[Set-Acl]:                	https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.security/set-acl
[Set-Clipboard]:          	https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/set-clipboard
[Set-Location]:           	https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/set-location
[Show-Command]:           	https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/show-command
[Sort-Object]:            	https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/sort-object
[Split-Path]:             	https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/split-path
[Start-Service]:          	https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/start-service
[Start-Sleep]:            	https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/start-sleep
[Stop-Computer]:          	https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/stop-computer
[Stop-Process]:           	https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/stop-process
[Stop-Service]:           	https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/stop-service
[Tee-Object]:             	https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/tee-object
[Test-Connection]:        	https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/test-connection
[Test-Path]:              	https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/test-path
[Trace-Command]:          	https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/trace-command
[Where-Object]:           	https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/where-object
[Write-Output]:           	https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/write-output

[apropos]:                	https://manpages.ubuntu.com/manpages/focal/en/man1/apropos.1.html
[basename]:               	https://manpages.ubuntu.com/manpages/focal/en/man1/basename.1.html
[cat]:                    	https://manpages.ubuntu.com/manpages/focal/en/man1/cat.1.html
[cd]:                     	https://manpages.ubuntu.com/manpages/focal/en/man1/cd.1posix.html
[chmod]:                  	https://manpages.ubuntu.com/manpages/focal/en/man1/chmod.1.html
[chown]:                  	https://manpages.ubuntu.com/manpages/focal/en/man1/chown.1.html
[clear]:                  	https://manpages.ubuntu.com/manpages/focal/en/man1/clear.1.html
[column]:                 	https://manpages.ubuntu.com/manpages/focal/en/man1/column.1.html
[cp]:                     	https://manpages.ubuntu.com/manpages/focal/en/man1/cp.1.html
[csvtool]:                	https://manpages.ubuntu.com/manpages/focal/en/man1/csvtool.1.html
[curl]:                   	https://manpages.ubuntu.com/manpages/focal/en/man1/curl.1.html
[cut]:                    	https://manpages.ubuntu.com/manpages/focal/en/man1/cut.1.html
[date]:                   	https://manpages.ubuntu.com/manpages/focal/en/man1/date.1.html
[df]:                     	https://manpages.ubuntu.com/manpages/focal/en/man1/df.1.html
[diff]:                   	https://manpages.ubuntu.com/manpages/focal/en/man1/diff.1.html
[dig]:                    	https://manpages.ubuntu.com/manpages/focal/en/man1/dig.1.html
[dirname]:                	https://manpages.ubuntu.com/manpages/focal/en/man1/dirname.1.html
[echo]:                   	https://manpages.ubuntu.com/manpages/focal/en/man1/echo.1.html
[find]:                   	https://manpages.ubuntu.com/manpages/focal/en/man1/find.1.html
[grep]:                   	https://manpages.ubuntu.com/manpages/focal/en/man1/grep.1.html
[groupadd]:               	https://manpages.ubuntu.com/manpages/focal/en/man8/groupadd.8.html
[groupdel]:               	https://manpages.ubuntu.com/manpages/focal/en/man8/groupdel.8.html
[groupmod]:               	https://manpages.ubuntu.com/manpages/focal/en/man8/groupmod.8.html
[head]:                   	https://manpages.ubuntu.com/manpages/focal/en/man1/head.1.html
[ip]:                     	https://manpages.ubuntu.com/manpages/focal/en/man8/ip.8.html
[jq]:                     	https://manpages.ubuntu.com/manpages/focal/en/man1/jq.1.html
[kill]:                   	https://manpages.ubuntu.com/manpages/focal/en/man1/kill.1.html
[lp]:                     	https://manpages.ubuntu.com/manpages/focal/en/man1/lp.1.html
[ls]:                     	https://manpages.ubuntu.com/manpages/focal/en/man1/ls.1.html
[man]:                    	https://manpages.ubuntu.com/manpages/focal/en/man1/man.1.html
[mkdir]:                  	https://manpages.ubuntu.com/manpages/focal/en/man1/mkdir.1.html
[mount]:                  	https://manpages.ubuntu.com/manpages/focal/en/man8/mount.8.html
[mv]:                     	https://manpages.ubuntu.com/manpages/focal/en/man1/mv.1.html
[ping]:                   	https://manpages.ubuntu.com/manpages/focal/en/man1/ping.1.html
[ps]:                     	https://manpages.ubuntu.com/manpages/focal/en/man1/ps.1.html
[pwd]:                    	https://manpages.ubuntu.com/manpages/focal/en/man1/pwd.1.html
[read]:                   	https://manpages.ubuntu.com/manpages/focal/en/man1/read.1posix.html
[reboot]:                 	https://manpages.ubuntu.com/manpages/focal/en/man8/reboot.8.html
[rm]:                     	https://manpages.ubuntu.com/manpages/focal/en/man1/rm.1.html
[shutdown]:               	https://manpages.ubuntu.com/manpages/focal/en/man8/shutdown.8.html
[sleep]:                  	https://manpages.ubuntu.com/manpages/focal/en/man1/sleep.1.html
[sort]:                   	https://manpages.ubuntu.com/manpages/focal/en/man1/sort.1.html
[ss]:                     	https://manpages.ubuntu.com/manpages/focal/en/man8/ss.8.html
[strace]:                 	https://manpages.ubuntu.com/manpages/focal/en/man1/strace.1.html
[systemctl]:              	https://manpages.ubuntu.com/manpages/focal/en/man1/systemctl.1.html
[tail]:                   	https://manpages.ubuntu.com/manpages/focal/en/man1/tail.1.html
[tee]:                    	https://manpages.ubuntu.com/manpages/focal/en/man1/tee.1.html
[time]:                   	https://manpages.ubuntu.com/manpages/focal/en/man1/time.1.html
[touch]:                  	https://manpages.ubuntu.com/manpages/focal/en/man1/touch.1.html
[traceroute]:             	https://manpages.ubuntu.com/manpages/precise/en/man1/traceroute.db.1.html
[truncate]:               	https://manpages.ubuntu.com/manpages/focal/en/man1/truncate.1.html
[umount]:                 	https://manpages.ubuntu.com/manpages/focal/en/man8/umount.8.html
[uname]:                  	https://manpages.ubuntu.com/manpages/focal/en/man1/uname.1.html
[uniq]:                   	https://manpages.ubuntu.com/manpages/focal/en/man1/uniq.1.html
[useradd]:                	https://manpages.ubuntu.com/manpages/focal/en/man8/useradd.8.html
[userdel]:                	https://manpages.ubuntu.com/manpages/focal/en/man8/userdel.8.html
[wc]:                     	https://manpages.ubuntu.com/manpages/focal/en/man1/wc.1.html
[xclip]:                  	https://manpages.ubuntu.com/manpages/focal/en/man1/xclip.1.html