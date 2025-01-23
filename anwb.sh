echo "loading anwb envs and aliases.."
export http_proxy=http://proxy.anwb.local:8080
export https_proxy=${http_proxy}
export HTTP_PROXY=${http_proxy}
export HTTPS_PROXY=${http_proxy}
export no_proxy=localhost,127.0.0.*,*.anwb.local,10.*,172.*,192.*,*.vpce.amazonaws.com
export NO_PROXY=${no_proxy}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
pyenv shell 3.11


alias pc="pycharm-community"
alias fanwb='cat ~/linux-util/anwb.sh | grep'
alias sanwb="subl ~/linux-util/anwb.sh"
alias al="hub aws login"
alias all='sudo cat ~/linux-util/login.txt | expect -f -'
alias allc='sudo cat ~/linux-util/login-choose.txt | expect -f -'

alias finc="cd ~/o2c-api-finclaim/o2c-api-finclaim ; source .venv/bin/activate"
alias cfinc="cd ~/o2c-api-finclaim/o2c-api-finclaim ; source .venv/bin/activate ; code ."
alias mfinc="cd ~/o2c-migrations/o2c-api-finclaim ; source .venv/bin/activate"
alias mmand="cd ~/o2c-migrations//o2c-api-mandate; source .venv/bin/activate"
alias moni="cd ~/o2c-monitoring"
alias cmoni="cd ~/o2c-monitoring ; code ."
alias migr="cd ~/o2c-migrations ; source .venv/bin/activate"
alias cmigr="cd ~/o2c-migrations ; source .venv/bin/activate ; code ."
alias orcp="cd ~/dh-pub-oracle-ebs-export-copy ; source venv/bin/activate"
alias corcp="cd ~/dh-pub-oracle-ebs-export-copy ; source venv/bin/activate ; code ."
alias cicd="cd ~/o2c-cicd-resources"
alias ccicd="cd ~/o2c-cicd-resources ; code ."
alias mand="cd ~/o2c-api-mandate ; source .venv/bin/activate"
alias cmand="cd ~/o2c-api-mandate ; source .venv/bin/activate ; code ."
alias bootst="cd ~/o2c-account-bootstrap ; code ."
alias cbootst="cd ~/o2c-account-bootstrap ; code ."
alias comm="cd ~/o2c-common"
alias ccomm="cd ~/o2c-common; code ."
alias bus="cd ~/o2c-business-event/o2c-business-event"
alias cbus="cd ~/o2c-business-event/o2c-business-event ; source .venv/bin/activate ; code ."


alias m="make"
alias mf="make fix"
alias mt="make test"
alias mtf="make testf"
alias mac="make acc"
alias macf="make accf"
alias mrf="make refresh-fixtures"
alias pipi="pip install -i https://nexus.anwbonline.nl/repository/pip-group/simple $1"
alias ddstart='sudo service docker start'

export CDK_EXECUTABLE=/home/alex/.nvm/versions/node/v20.11.0/bin/cdk