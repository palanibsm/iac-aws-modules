#!/bin/bash

echo "Options"
echo "-noauth Do not re-authenticate with saml"
echo "-nodestroy - Don't destroy terraform resources"

unit_test="inspec" # "terratest" or "inspec"

export BRANCH=$(git rev-parse -abbrev -ref HEAD)
export PORTFOLIO="module"
export APP="rds-oracle"

for arg in "$@"
do
    if [ "$arg" == "-noauth" ]
    then
        echo auth="no"
        auth="no"
    fi
    if [ "$arg" == "-nodestroy" ]
    then
        echo destroy="no"
        destroy="no"
    fi
    if [ "$arg" == "-noapply" ]
    then
        echo apply="no"
        apply="no"
    fi
done

export TFLINT_LOG=warn
blue='\033[1;36m'
white='\033[1;37m'
red='\033[1;31m'

if [ -z $auth ]; then
    if test -f ~/.aws/credentials ; then
        source ~/.aws/credentials
        echo "Inside Auth if mathches"
        
        else

        echo "Inside Auth else mathches"

    fi
fi

# ----------------------
# Run static tests
# ----------------------
echo -e "\n$blue ####  Running terraform fmt ####$white\n"
terraform fmt -check || (echo -e "\n$red exit status of " $? "$white\n")

echo -e "\n$blue ####  Running terraform init ####$white\n"
terraform init || exit 1

echo -e "\n$blue ####  Running terraform validate ####$white\n"
terraform validate || exit 1

echo -e "\n$blue ####  Running terraform plan ####$white\n"
terraform plan || exit 1

