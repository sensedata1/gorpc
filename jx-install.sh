rm -rf ~/.minikube ~/.kube ~/.helm



jx create cluster minikube -c 12 -m 16384 -s 64GB -d hyperkit \
--batch-mode \
--no-default-environments=true \
--default-admin-password='password' \
--default-environment-prefix='gorpc' \
--git-api-token='a1b007ec3bf789bad5305931c677ef25e5c3e681' \
--git-provider-kind='github' \
--git-provider-url='https://github.com' \
--git-username='sensedata1'

# cp -p ~/work/src/bitbucket.org/biomexio/biomex-sdlc/myvalues.yaml ~/.jx/cloud-environments/env-minikube/

sleep 30

jx create addon gitea \
--username='sensedata1' \
--password='password' \
--email='lordben@gmail.com' \
--helm-update=true

sleep 30


if [[ $(minikube status | grep -q 'stopped') ]]; then echo "minikube up"; else minikube start; fi

gitea_url="http://gitea-gitea.jx.$(minikube ip).nip.io"

jx_install_options=( --cleanup-temp-files=true \
--provider=minikube \
--default-admin-password='password' \
--default-environment-prefix='gorpc' \
--git-username='sensedata1' \
--git-provider-kind='gitea' \
--git-provider-url=$gitea_url )

jx install "${jx_install_options[@]}"

