#!/bin/bash

// make sure no open reverse shell is running
kubectl rollout restart deployment vuln-fileupload
sleep 1

clear

echo ""
echo ""
echo "" 
figlet -w $(tput cols) -c "K8S"
figlet -w $(tput cols) -c "Hacking"
figlet -w $(tput cols) -c "Reality"
echo ""
echo ""
echo ""
echo ""
read -p "Press ENTER to continue..."

clear


echo ""
echo ""
echo ""
echo -e "\033[1mBenedikt Iltisberger\033[0m"
echo ""
imgcat assets/bene-head.png --width=30
echo -e "Age:\t\t 40"
echo -e "From:\t\t Cologne/Germany"
echo -e "Company:\t mogenius"
echo -e "Job:\t\t DevOps Engineer, Software Developer"
echo -e "Lang:\t\t go, typescript, swift, bash ..."
echo -e "Focus:\t\t DevOps, Backend, Kubernetes, Security"
echo -e "Hobbies:\t Family, Coding, Motorcycles"
echo -e "Email:\t\t bene@mogenius.com"
echo -e "X:\t\t @iltisberger"

echo ""
echo ""
echo ""
echo ""
read -p "Press ENTER to continue..."

clear
echo ""
echo ""
echo ""
echo -e "\033[1mTopics in Kubernetes Security\033[0m"
echo ""
echo ""
echo ""
read -p ""
echo "     => 🖥️  Common Attack Vectors: API Server, Etcd Data Store"
read -p ""
echo "     => 🛠️  Container Runtime Security: Container Escape, Image Vulnerabilities"
read -p ""
echo "     => 🌐 Network Security: Service Mesh Exploits, Man-in-the-Middle Attacks"
read -p ""
echo "     => 🔗 Supply Chain Attacks: Malicious Images, CI/CD Pipeline Vulnerabilities"
read -p ""
echo "     => 🕵️  Persistent Threats: Backdoors, Data Exfiltration"
read -p ""
echo "     => 🛡️  Defense Strategies: Pod Security Policies, Network Policies, Audit Logs, RBAC"
read -p ""
echo "     => 🔧 Security Tools: Kube-bench, Kube-hunter, Falco"
read -p ""
echo "     => 🚨 Incident Response: Response Plans, Forensics"
read -p ""
echo ""
echo ""
echo ""
echo ""
read -p "Press ENTER to continue..."

clear
echo ""
echo ""
echo ""
echo -e "\033[1mPractical Hacking\033[0m"
echo ""
echo ""
echo ""
read -p ""
echo "     => 🎯 Find an unpatched security vulnerability"
read -p ""
echo "     => 🛒 Purchase a Zero-Day-Exploit"
read -p ""
echo "     => 🤯 Exploit a misconfiguration of the cluster"
read -p ""
echo "     => ⚓️ Target RBAC, Network Policies, Impersonation, etc."
read -p ""
echo "     => 💁‍♂️ You go the extra-mile: Gain maintainers' trust and manipulate the build pipeline"
echo "           of an open-source project and spend years deploying backdoors into it (e.g., #XZ Utils backdoor)"
read -p ""
echo "     => 📺 Use ChatGPT and YouTube to find new ways to hack Kubernetes"
read -p ""
echo "     => 👮 You name it..."
echo "           Kubernetes is complex and there are many ways to hack it"
read -p ""
echo ""
echo ""
echo ""
echo ""
read -p "Press ENTER to continue..."

clear
echo ""
echo ""
echo ""
echo -e "\033[1mBut it is even easier ...\033[0m"
read -p ""
echo ""
echo ""
echo ""
echo "Imagine you work for SmartWash Ltd:"
echo ""
read -p ""
echo "SmartWash Ltd. is a small company selling washing machines."
echo "They have a small IT department with a DevOps engineer and a few full-stack developers."
echo "The company is using one kubernetes cluster to run their applications."
read -p ""
echo "       -  k8s was introduced into the company because the CTO received 200.000$ credits from Google"
read -p ""
echo "       -  the companies IT department is understaffed and the engineers are overworked"
read -p ""
echo "       -  the staff feels overwhelmed by the complexity"
echo "          (helm, service mesh, terraform, k8s, istio, prometheus, grafana, etc.)"
read -p ""
echo "       -  they are currently working on:"
read -p ""
echo "             -  \"Introduce network policies\""
read -p ""
echo "             -  \"Use AI to sell more washing machines\""
read -p ""
echo "             -  \"Introduce securityContexts to ALL containers\""
read -p ""
echo "             -  \"Introduce Hashicorp Vault\""
read -p ""
echo "             -  \"Dedicated kubeconfig for every dev (instead of the shared admin kubeconfig)\""
read -p ""
echo ""
echo ""
read -p "Press ENTER to continue..."

clear
echo ""
echo ""
echo ""
echo -e "\033[1mDeveloper-Steve and DevOps-Joe\033[0m"
read -p ""
echo ""
imgcat assets/steve-and-joe.png --width=50
echo ""
echo ""
read -p "Press ENTER to continue..."

clear 
echo ""
echo ""
echo ""
echo -e "\033[1mQuick Reminder: Reverse Shell\033[0m"
echo ""
echo ""
echo ""
echo -e "\033[1;31m+-----------------+                                \033[1;32m+-------------------+\033[0m
\033[1;31m| Attacker's      |                                \033[1;32m| Kubernetes        |\033[0m
\033[1;31m| Machine         |                                \033[1;32m| Cluster           |\033[0m
\033[1;31m| (Listener)      |<------------------------------>\033[1;32m|                   |\033[0m
\033[1;31m+-----------------+                                \033[1;32m|  \033[1;35m+--------------+ \033[1;32m|\033[0m
\033[1;31m        ^                                          \033[1;32m|  \033[1;35m| Victim's     | \033[1;32m|\033[0m
\033[1;31m        |                                          \033[1;32m|  \033[1;35m| Container    | \033[1;32m|\033[0m
\033[1;31m        |                                          \033[1;32m|  \033[1;35m| (Reverse     | \033[1;32m|\033[0m
\033[1;31m        |                                          \033[1;32m|  \033[1;35m| Shell)       | \033[1;32m|\033[0m
\033[1;31m        |                                          \033[1;32m|  \033[1;35m+--------------+ \033[1;32m|\033[0m
\033[1;31m        |                                          \033[1;32m+-------------------+\033[0m
\033[1;31m        |                                                |\033[0m
\033[1;31m        |                                                |\033[0m
\033[1;31m        |                                     \033[1;32m+----------v-----------+\033[0m
\033[1;31m        |                                     \033[1;32m| Firewall             |\033[0m
\033[1;31m        +-------------------------------------\033[1;32m| (Allows outgoing     |\033[0m
\033[1;31m                                              \033[1;32m|  connections)        |\033[0m
\033[1;31m                                              \033[1;32m+----------------------+\033[0m"
echo ""
echo ""
echo ""
read -p "Press ENTER to continue..."

clear 
echo ""
echo ""
echo ""
echo -e "\033[1mDemo time ...\033[0m"
echo ""
imgcat assets/demo-time.png --width=60
echo " - Exploit a container"
echo " - Establish a reverse shell"
echo " - Asses our environment (kubectl can-i)"
echo " - Extract secrets"
echo ""
echo ""
echo ""
read -p "Press ENTER to continue..."

clear 
echo ""
echo ""
echo ""
echo -e "\033[1mExploit ...\033[0m"
echo ""
echo ""
echo ""
echo ""
bat exploit.sh
echo ""
echo ""
echo ""
read -p "Press ENTER to continue..."

clear
echo ""
echo ""
echo ""
echo -e "\033[1mSummary 🚀🚀🚀\033[0m"
read -p ""
echo ""
echo ""
echo ""
echo "   🧬  kubernetes can be dangerous"
read -p ""
echo "   🆙  always try to improve your security"
read -p ""
echo "       -  use non-default namespaces"
echo "       -  use network policies"
echo "       -  setup SecurityContexts"
echo "       -  run slim-containers, use distroless, remove all shells"
echo "       -  monitor your system"
echo "       -  limit user capabilities"
read -p ""
echo "   📚  try to understand what you are doing in kubernetes"
read -p ""
echo "   🚨  Benchmark your system (e.g. CIS-Benchmark)"
read -p ""
echo "   🚨  Monitor your system"
read -p ""
echo "   🚨  Apply best practices to your system"
read -p ""
echo ""
echo ""
echo "      🧚‍♀️     This is not a fairytale scenario. This can happen to anyone."
echo "      🔒     1. Keep improving your security."
echo "      😊     2. Always stay humble."


read -p ""
echo ""
echo ""
echo ""
read -p "Press ENTER to continue..."

clear 
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
figlet -c "Thank You"
read -p ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo -e "Github:  https://github.com/mogenius/meetup-2024-hack"
echo ""
echo ""
echo ""

read -p ""
