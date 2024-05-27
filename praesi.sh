#!/bin/bash
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
echo -e "\033[1mHow to hack K8S\033[0m"
echo ""
echo ""
echo ""
read -p ""
echo "     => 🎯 Find an unpatched security fault"
read -p ""
echo "     => 🛒 Buy a Zero-Day-Exploit"
read -p ""
echo "     => 🤯 Use a misconfiguration of the cluster"
read -p ""
echo "     => ⚓️ RBAC, Network Policies, Impersonation, etc."
read -p ""
echo "     => 💁‍♂️ Gain maintainers trust and get access to the build pipeline of an open source project"
echo "        and spend many years to deploy backdoors into it (#XZ Utils backdoor)"
read -p ""
echo "     => 📺 Use chatgpt + youtube to find new ways to hack k8s"
read -p ""
echo "     => 👮 you name it ... k8s is komplex and there are many ways to hack it"
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
echo -e "\033[1mIt is even easier ...\033[0m"
read -p ""
echo ""
echo ""
echo ""
echo "Imagine you work for SmartWash Ltd:"
echo ""
read -p ""
echo "SmartWash Ltd. is a small company selling washing machines."
echo "They have a small IT department with a DevOps engineer and a few full-stack developers."
echo "The company is using a kubernetes cluster to run their applications."
read -p ""
echo "       -  kubernetes was introduced into the company after the CTO received 200k"
echo "          credits from Google on a conference"
read -p ""
echo "       -  the companies IT department is understaffed and the engineers are overworked"
read -p ""
echo "       -  the staff feels overwhelmed by the complexity"
echo "          (helm, service mesh, terraform, k8s, istio, prometheus, grafana, etc.)"
read -p ""
echo "       -  all applications run in the same namespace (default)"
read -p ""
echo "       -  the backlog is filled with tickets like:"
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
echo -e "\033[1mLet me tell you a story ...?\033[0m"
read -p ""
echo ""
echo ""
echo ""
echo "   =>  About Developer-Steve and DevOps-Joe at SmartWash Ltd."
read -p ""
echo ""
echo ""
imgcat assets/steve-and-joe.png --width=50
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
echo -e "\033[1mExploit ....\033[0m"
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
echo "      ⚠️     This is not a fairytale scenario. This is what many small and medium-sized companies are facing."
echo "      ⚠️     If you are confident that this will never happen in your setup, we recommend staying humble."
echo "      ⚠️     You might have made significant mistakes at least 10 times without realizing it yet. 🤣"


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
