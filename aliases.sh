echo "loading shared aliases.."
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
alias senv='subl ~/linux-util/env.sh'

## Git
alias gad='git add .'
alias gc='git checkout'
alias gm='git checkout $(git symbolic-ref refs/remotes/origin/HEAD | sed "s@^refs/remotes/origin/@@")'
alias gb='git checkout -b'
alias gbd='git branch -D'
alias gbl='git branch --list'
alias gblr='git branch -r'
alias gf='git fetch'
alias gfa='git fetch --all ; git remote update origin --prune'
alias gs='git status'
alias gp='git pull'
alias gt='git tag'
alias gl='git log'
alias gls=' git log --pretty=format:"%C(auto)%h %Cgreen%an %Creset%s" --abbrev-commit'
alias gr='git rebase'
alias grm='git rebase main'
alias grc='git rebase --continue'
alias gri='git rebase -i'
alias grir='f() { branch=$(git symbolic-ref --short HEAD); git rebase -i origin/$branch~$1 $branch; unset -f f; }; f'
alias gcm='git commit -m'
alias gcmp='git commit -m ¨$1¨ && git push'
alias gcam='git commit -am'
alias gcamp='git commit -am ¨$1¨ && git push'
alias gcnm='git commit -n -m'
alias gcnmp='git commit -n -m ¨$1¨ && git push'
alias gcanm='git commit -a -n -m'
alias gcanmp='git commit -a -n -m ¨$1¨ && git push'
alias gcpr='git commit -c ORIG_HEAD'
alias gcapr='git commit -a -c ORIG_HEAD'
alias gcanpr='git commit -a -n -c ORIG_HEAD'
alias gpt='git push --tag'
alias gpu='git push'
alias gpfo='git push --force-with-lease'
alias gtl='git tag --list'
alias rev='git rev-parse --short HEAD | tr -d "\n" | xclip -selection c'
alias revc='git rev-parse --short HEAD | tr -d "\n"'
alias bra='git rev-parse --abbrev-ref HEAD | tr -d "\n" | xclip -selection c'
alias soft1='git reset --soft HEAD~'
alias soft='git reset --soft'
alias hard1='git reset --hard HEAD~'
alias hard='git reset --hard'
alias gsl='git stash list'
alias gsdrop='git stash drop'
alias gspush='git add . ; git stash push -m'
alias gspop='git stash pop'
alias gsapp='git stash apply'
alias gspull='git stash push -m "TEMP" ; git pull ; git stash pop'

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
alias dudir='du -h --max-depth=1'
alias cpy='xclip -i -selection clipboard'

## Other
alias pubsub='lsof -i tcp:8085'
alias cpwd='pwd | xclip -selection c'

## Python
alias wp='which python'
alias pv='python -V'
alias dv='deactivate'
alias ptc='pytest --collect-only'

alias bl='black .'

## Python - Pip
alias venv='env | grep VIRTUAL_ENV'
alias vv='source .venv/bin/activate'
alias newvv='python3 -m venv .venv && source .venv/bin/activate'
alias get-pip='curl -sS https://bootstrap.pypa.io/get-pip.py | python3.10'
alias pipr='pip install -r requirements.txt'
alias pipadd='echo $1 >> requirements.txt'
alias pipf='pip freeze'

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
alias aws-default='oathtool -b --totp $(sudo cat ~/.aws/mfa.txt) | xclip -selection c ; aws-mfa --profile default'

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


