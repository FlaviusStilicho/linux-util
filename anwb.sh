echo "loading anwb envs and aliases.."
export http_proxy=http://proxy.anwb.local:8080
export https_proxy=${http_proxy}
export HTTP_PROXY=${http_proxy}
export HTTPS_PROXY=${http_proxy}
export no_proxy=localhost,127.0.0.*,*.anwb.local,10.*,172.*,192.*,*.vpce.amazonaws.com
export NO_PROXY=${no_proxy}

alias pc="pycharm-community"
alias fanwb='cat ~/linux-util/anwb.sh | grep'
alias sanwb="subl ~/linux-util/anwb.sh"
alias al="hub aws login"

alias finc="cd ~/o2c-api-finclaim ; source .venv/bin/activate"
alias moni="cd ~/o2c-monitoring"
alias migr="cd ~/o2c-migrations ; source .venv/bin/activate"
alias orcp="cd ~/dh-pub-oracle-ebs-export-copy ; source venv/bin/activate"
alias cicd="cd ~/o2c-cicd-resources"
alias mand="cd ~/o2c-api-mandate"

alias m="make"
alias mf="make fix"
alias mt="make test"
alias mtf="make testf"
alias mac="make acc"
alias macf="make accf"


# export STACK_SUFFIX=abakker
export STACK_NAME=o2c-api-finclaim
# alias sambr='export STACK_SUFFIX=$( git rev-parse --abbrev-ref HEAD)'

samdeploy(){
    branch_name=$(git rev-parse --abbrev-ref HEAD)

    export STACK_SUFFIX=$branch_name
    if [[ -z $STACK_NAME ]]; then
        echo "Set STACK_NAME and STACK_SUFFIX environment variables"
    else
        sam build --template template.yaml
        sam validate --lint
        exit_code=$?
        if [[ $exit_code != 0 ]]; then
            return $exit_code
        fi
        sam package --output-template-file packaged.yaml

        if [[ $1 == "ns" ]] || [[ -z $STACK_SUFFIX ]] || [[ $STACK_SUFFIX == "" ]]; then

            echo; echo "Using '$STACK_NAME' as stack name without a suffix" ; echo
            read -r -p "Proceed? [y/n] " response
            if [[ "$response" =~ ^(Y|YES|Yes|y|yes)$ ]]; then
                sam deploy --stack-name ${STACK_NAME} --template-file packaged.yaml --on-failure DELETE    
            fi

        else
            echo ; 
            echo "Using '$STACK_NAME' as stack name and '$STACK_SUFFIX' as suffix" # ; echo
            # read -r -p "Proceed? [y/n] " response
            # if [[ "$response" =~ ^(Y|YES|Yes|y|yes)$ ]]; then
                sam deploy --stack-name ${STACK_NAME}-${STACK_SUFFIX} --template-file packaged.yaml --parameter-overrides namesuffix=-${STACK_SUFFIX}  --on-failure ROLLBACK #--timeout-in-minutes 3
            # fi
        fi        
    fi
}
