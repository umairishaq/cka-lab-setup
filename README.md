## Create 3 EC2 instance for a 3 node K8s cluster.

https://github.com/sandervanvugt/cka.git

**CentOS 7: ami-0affd4508a5d2481b (us-east-1)** need to subscribe via marketplace prior to use.

1. setup-docker
    * Comment out the last line in setup-docker.sh `systemctl disable --now firewalld`
2. setup-kubetools
3. Ensure ports 10250 and 6443 are allowed (SG)


## Commands

```Bash
alias k=kubectl
k explain pod.metadata
k edit po three-pods #Edit pod(s) directly

```