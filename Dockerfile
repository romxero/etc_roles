# used for CI/CD testing with our OS here at CZ Biohub
FROM rockylinux:8
LABEL MAINTAINER="RC <randall.white@czbiohub.org>"

#base packages and install ansbile-lint for checking the syntax to our buildds 
RUN dnf -y update && \
dnf -y install epel-release && \
dnf -y install ansible ansible-test ansible-collection-community-general \
ansible-collection-redhat-rhel_mgmt python3 python3-pip && \
pip3 install ansible-lint





