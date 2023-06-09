export PATH='/usr/local/go/bin:/home/alex/google-cloud-sdk/bin:/home/alex/.nvm/versions/node/v18.3.0/bin:/home/linuxbrew/.linuxbrew/Cellar/pyenv/2.1.0/bin/shims:/home/linuxbrew/.linuxbrew/Cellar/pyenv/2.1.0/bin//bin:/home/alex/.local/bin:/usr/local/bin:/usr/local/apache-maven-3.8.6/bin/:~/git/ewx-root/context/ewx-intelligence/runtimes:/home/linuxbrew/.linuxbrew/Cellar/pyenv/2.1.0/bin:/home/linuxbrew/.linuxbrew/bin:/home/alex/git/ewx-root/context/ewx-processing/.venv/bin:/home/alex/.nvm/versions/node/v18.3.0/bin:/home/alex/.local/bin:/usr/local/bin:/usr/local/apache-maven-3.8.6/bin:~/git/ewx-root/context/ewx-intelligence/runtimes:/home/linuxbrew/.linuxbrew/bin:/home/alex/.poetry/bin:/home/linuxbrew/.linuxbrew/bin:/home/alex/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin'
export KUBE_EDITOR='vi'

## Intellij
alias ij='/snap/intellij-idea-community/current/bin/idea.sh $1 &'

## Shell config
alias als='source ~/linux-util/aliases.sh ; source ~/.bashrc'
alias lals='less ~/linux-util/aliases.sh'
alias sals='subl ~/linux-util/aliases.sh'
alias fals='cat ~/linux-util/aliases.sh | grep'
alias ga='cat ~/linux-util/aliases.sh | grep'
alias sbrc='subl ~/.bashrc'

## Git
alias gc='git checkout'
alias gb='git checkout -b'
# alias gbf='git checkout -b feature/EWXDEV-$1'
alias gf='git fetch'
alias gs='git status'
alias gp='git pull'
alias gt='git tag'
alias gpt='git push --tag'
alias gpfo='git push --force'
alias gtl='git tag --list'
alias rev='git rev-parse --short HEAD | tr -d "\n" | xclip -selection c'
alias revc='git rev-parse --short HEAD | tr -d "\n"'
alias bra='git rev-parse --abbrev-ref HEAD | tr -d "\n" | xclip -selection c'
alias soft1='git reset --soft HEAD~'
alias soft='git reset --soft'
alias hard1='git reset --hard HEAD~'
alias hard='git reset --hard'

## Terraform
alias tf='terraform'
alias tfi='terraform init'
alias tfiu='terraform init --upgrade'
alias tfc='terraform console'
alias tfv='terraform validate'
alias tff='terraform fmt --recursive'
alias tffu='terraform force-unlock -force'
alias tfo='terraform output'
alias tfim='terraform import'

alias tfw='terraform workspace show'
alias tfwn='terraform workspace new'
alias tfwl='terraform workspace list'
alias tfws='terraform workspace select'

alias tfa='terraform apply'
alias tfav='terraform apply --var-file' 
alias tfaa='terraform apply --auto-approve' 
alias tfaav='terraform apply --auto-approve --var-file' 
alias tfat='terraform apply --target' 
alias tfaat='terraform apply --auto-approve --target' 

alias tfp='terraform plan'
alias tfpv='terraform plan --var-file'
alias tfpt='terraform plan --target'

alias tfd='terraform destroy' 
alias tfdv='terraform destroy --var-file' 
alias tfda='terraform destroy --auto-approve' 
alias tfdav='terraform destroy --auto-approve --var-file' 
alias tfdt='terraform destroy --target' 
alias tfdat='terraform destroy --auto-approve --target'

alias tfsl='terraform state list'
alias tfslg='terraform state list | grep' 
alias tfss='terraform state show'
alias tfsp='terraform state pull > tfstate.json'
alias tfsrm='terraform state rm'
# alias batch-tfsrm='terraform state list | grep $1 | while read -r line; do terraform state rm $line; done'
alias tft='terraform taint'

## Kubectl
alias kcred='gcloud container clusters get-credentials $1 --project $2'
alias k='kubectl'
alias kx='kubectl exec'
alias kxi='kubectl exec -it'
alias ke='kubectl edit'
alias kns='if [ $# -ne 0 ] ; then kubectl config set-context --current --namespace ; else kubectl get ns ; fi'
alias knss='kubectl config set-context --current --namespace'
alias kg='kubectl get'
alias kgy='kubectl get -o yaml'
alias kgpy='kubectl get pod -o yaml'
alias kga='kubectl get -A --field-selector=metadata.namespace!=kube-system'
alias kgaa='kubectl get all -A --field-selector=metadata.namespace!=kube-system'
alias kd='kubectl describe '
alias krm='kubectl delete'

alias kgan='kubectl get all -n'

alias kcgc='kubectl config get-contexts'
alias kcuc='kubectl config use-context'
alias kcrc='kubectl config rename-context'
alias kcdc='kubectl config delete-context'

alias kcsc='kubectl config set-context'

alias kgp='kubectl get pods'
alias kgpn='kubectl get pods -n'
alias kgpa='kubectl get pods --all-namespaces'
alias kgpg='kubectl get pods --no-headers=true -o name | grep'

alias kdp='kubectl describe pod'
alias kdpn='kubectl describe pod -n'

alias krmp='kubectl delete pod'
alias krmpn='kubectl delete pod -n'

alias kgd='kubectl get deployments'
alias kgdn='kubectl get deployments -n'
alias kgda='kubectl get deployments --all-namespaces'

alias kdd='kubectl describe deployment'
alias kddn='kubectl describe deployment -n'

alias krd='kubectl rollout restart deployment'
alias krmd='kubectl delete deployments'
alias krmdn='kubectl delete deployments -n'

alias kl='kubectl logs'
alias klf='kubectl logs --follow'
alias kln='kubectl logs -n'
alias klnt='kubectl logs --follow -n'
alias klp='kubectl logs --previous'

alias kpf='kubectl port-forward'
alias kp='kubectl patch' ## kp hpa bigtable-time-series-writer-1 -p '{"spec": {"maxReplicas": 1}}'

alias busybox='kubectl run -i --tty busybox --image=busybox --restart=Never -- sh '
alias curl-pod='kubectl run -i --tty curl --image=curlimages/curl --restart=Never -- sh '

alias k8srm='kubectl get pods --field-selector=status.phase=Failed | while read -r line; do kubectl delete pod $(echo $(echo $line | cut -f1 -d" ")); done'
## Helm
alias h='helm'
alias hl='helm list -A'
alias hlf='helm list -A --failed'
alias hu='helm uninstall'

## Linux 
alias la='ls -al'
alias lah='ls -alh --sort=size'
# alias du='ncdu'
alias running-services='systemctl list-units --type=service --state=running'
alias update-all='source /home/alex/update.sh'
alias rmrf='rm -rf'
alias cat='batcat'
alias dudir='du -h --max-depth=1'
alias cpy='xclip -i -selection clipboard'

## Other
alias pubsub='lsof -i tcp:8085'
alias cpwd='pwd | xclip -selection c'

## Python
alias wp='which python'
alias pv='python -V'
alias dv='deactivate'

## Python - Pip
alias venv='env | grep VIRTUAL_ENV'
alias vv='source .venv/bin/activate'
alias newvv='python3 -m venv .venv && source .venv/bin/activate'
alias get-pip='curl -sS https://bootstrap.pypa.io/get-pip.py | python3.10'
alias pipr='pip install -r requirements.txt'
alias pipadd='echo $1 >> requirements.txt'

## Python - Pipenv
# alias pud='pipenv update --dev'
# alias prm='pipenv --rm'
# alias ppv='pipenv run python -V'
# alias ppr='pipenv run'

## Python - Poetry
alias pa='poetry add'
alias pad='poetry add --dev'
alias pwv='poetry run which python'
alias pi='poetry install'
alias pr='poetry run'
alias prpl='poetry run pip list'

## Java
alias jib='mvn -Drevision=$(revc) package jib:build'

## AWS CLI
alias awsconf='subl ~/.aws/config'
alias awscred='subl ~/.aws/credentials'
alias awsl='oathtool -b --totp $(sudo cat ~/.aws/mfa.txt) | xclip -selection c ; aws-mfa --profile $1'
alias aws-default='oathtool -b --totp $(sudo cat ~/.aws/mfa.txt) | xclip -selection c ; aws-mfa --profile default'
alias aws-nc='oathtool -b --totp $(sudo cat ~/.aws/mfa.txt) | xclip -selection c ; xclip -selection c -o | aws-mfa --profile default'
alias aws-sb='oathtool -b --totp $(sudo cat ~/.aws/mfa.txt) | xclip -selection c ; xclip -selection c -o | aws-mfa --assume-role arn:aws:iam::953143183107:role/Admin'
alias aws-cp='oathtool -b --totp $(sudo cat ~/.aws/mfa.txt) | xclip -selection c ; xclip -selection c -o | aws-mfa --assume-role arn:aws:iam::851211178769:role/Nordcloud-Clouduty'
# alias aws-cpc='oathtool -b --totp $(sudo cat ~/.aws/mfa.txt) | xclip -selection c ; aws-mfa --profile cp-dev'
alias aws-cpc='oathtool -b --totp $(sudo cat ~/.aws/mfa.txt) | xclip -selection c ; xclip -selection c -o |  aws-mfa --assume-role arn:aws:iam::312268712655:role/Nordcloud-Clouduty'
alias aws-cpct='oathtool -b --totp $(sudo cat ~/.aws/mfa.txt) | xclip -selection c ; xclip -selection c -o |  aws-mfa --assume-role arn:aws:iam::419840412793:role/Nordcloud-Clouduty'

alias mfa='oathtool -b --totp $(sudo cat ~/.aws/mfa.txt) | xclip -selection c'
alias agci='aws sts get-caller-identity'
alias aws-authd='aws sts decode-authorization-message --encoded-message $1'

## Terraformer
alias tfr='terraformer import aws --profile=nc --regions=eu-central-1 -r '

## Docker
alias d='sudo docker'
alias db='sudo docker build'
alias dbv='sudo docker build --no-cache --progress plain'
alias di='sudo docker images'
alias dirm='sudo docker image rm'
alias dp='sudo docker pull'
alias dps='sudo docker ps'
alias dri='sudo docker run -it --rm --entrypoint=bash'
alias drri='sudo docker run --user root -it --rm --entrypoint=bash'
alias dris='sudo docker run -it --rm --entrypoint=/bin/sh'
alias drris='sudo docker run --user root -it --rm --entrypoint=/bin/sh'
alias drip='sudo docker run --user root -it --rm --pull=always --entrypoint=bash'
alias drips='sudo docker run --user root -it --rm --pull=always --entrypoint=/bin/sh'

## ANWB
alias cdkd='poetry run cdk deploy --require-approval=never'


## Functions
function mkd () { 
	mkdir -p $1
	cd $1
}
function up () { 
  if [ $# -eq 0 ]
  then
    cd ..
  else 
    for (( c=0; c<$1; c++ ))
    do
      cd ..
    done
fi
}

function kns () { 
  if [ $# -eq 0 ] ; then
    kubectl get ns
  else 
    kubectl config set-context --current --namespace $1
  fi
}

function krmpg () { 
  if [ $# != 1 ] ; then
    printf '%s\n' "Please pass a single pod name" >&2
  else 
    kubectl delete pod $(kubectl get pods --no-headers=true -o name | grep $1 | cut -c 5- )
  fi
}

function kgpgc () { 
  if [ $# != 1 ] ; then
    printf '%s\n' "Please pass a single pod name" >&2
  else 
    kubectl get pods --no-headers=true -o name | grep $1| cut -c 5- | xclip -i -selection clipboard
  fi
}

function kxib () { 
  if [ $# != 1 ] ; then
    printf '%s\n' "Please pass a single pod name" >&2
  else 
    kubectl exec -it $(kubectl get pods --no-headers=true -o name | grep $1| cut -c 5- ) bash
  fi
}

# alias kgpg='grep $1 <<< $(kubectl get pods --no-headers=true -o name) | cut -c 5- | xclip -i -selection clipboard'
# alias krmpg='kubectl delete pod $(kubectl get pods --no-headers=true -o name | grep $1 | cut -c 5- )'

function port() {
  lsof -i TCP:$1
}

function ec() {
  if [ $? -eq 0 ] ; then
  	echo "Completed successfully!"
  else
  	echo "Failed!"
  fi
}

function mtg() {
  cd ~/git/mtg-react
  npm start
}

