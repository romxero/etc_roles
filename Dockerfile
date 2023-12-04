# used ansible-lint checking
FROM rockylinux:9-minimal
LABEL MAINTAINER="RC <randall.white@czbiohub.org>"

#base packages and install ansbile-lint for checking the syntax to our buildds 
RUN microdnf -y update && \
microdnf -y install epel-release && \
microdnf -y install ansible ansible-test ansible-collection-community-general gcc make glibc autoconf m4 automake \
ansible-collection-redhat-rhel_mgmt python3 python3-pip && \
pip3 install ansible-lint
#pip to install the ansible lint stuff

#run the ansible lint command to check this repository
RUN ansible-lint


