#! /bin/bash

YELLOW='\033[1;33m'
NC='\033[0m' # No Color

#m Edit these two environment variables as you create more environment setup scripts.
export ENVIRONMENT_PROMPT="WEST"
export KUBECONFIG=$HOME/.kube/hello-world-west

printf "Setting up isolated Kubernetes environment in: ${YELLOW}$KUBECONFIG${NC}\n"
printf "NOTE: The command format to run this script is: \". $BASH_SOURCE\"\n"

export PS1="\[$(tput setaf 2)\]$ENVIRONMENT_PROMPT: \[$(tput setaf 7)\]\[$(tput setaf 6)\]\W\\$ \[$(tput setaf 7)\]\[$(tput sgr0)\]"

echo "Deploying frontend and backend to WEST"
oc new-project west
oc apply -f yaml/ --recursive