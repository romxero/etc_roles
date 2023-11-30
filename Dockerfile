# used for CI/CD testing with our OS here at CZ Biohub
FROM rockylinux:8-minimal
LABEL MAINTAINER="RC <randall.white@czbiohub.org>"

#base packages 
RUN dnf update && \
dnf -y install ansible ansible-test ansible-collection-community-general \
ansible-collection install python3 python3-pip



