get-ciminstance win32_networkadapterconfiguration | where-object ipenabled |
	ft -autosize Description,Index,IpAddress,IPSubnet,DNSHostName,DNSDomain