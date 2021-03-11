## Create 3 EC2 instance for a 3 node K8s cluster using TF <= v0.12.30.

https://github.com/sandervanvugt/cka.git

**CentOS 7: ami-0affd4508a5d2481b (us-east-1)** need to subscribe via marketplace prior to use.

1. setup-docker
2. setup-kubetools
3. Ensure ports 10250 and 6443 are allowed for kube system. (SG)
4. Ensure port 6783 are allowed for weave. (SG)


## Commands

```Bash
alias ll="ls -al --color=auto"
alias k="kubectl"
alias kd="kuebectl describe"
alias kg="kubectl get"
alias kgp="kubectl get po"
alias kapi="kubectl api-resources"
alias kc="kubectl create"
alias ke="kubectl explain"
alias ksn="kubectl config set-context --current --namespace"

k run redis123 --image=redis --generator=run-pod/v1 --dry-run -o yaml > redis123.yaml
k create deploy nginx2 --image=nginx --dry-run -o yaml > myfile.yaml
k explain pod
k explain pod.metadata
k get secrets/default-token-lqwk4 -o jsonpath='{.data.token}'
k get po/redis -o jsonpath='{.spec.containers[].image}' # All image names from containers[] array.
k edit po three-pods #Edit pod(s) directly
k logs -n kube-system weave-net-spdv9 weave #Logs from a specific (weave) container in a POD (weave-net-spdv9)
k get all -l 'env=prod' --show-labels
journalctl -fu kubelet
systemctl status kubelet --no-pager --full
kg clusterroles -A | wc -l
openssl x509 -in/etc/kubernetes/pki/etcd/server.crt --text --noout

```