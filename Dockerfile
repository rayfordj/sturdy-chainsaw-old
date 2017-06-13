FROM docker.io/centos:7
MAINTAINER RayfordJ <rjohnson@redhat.com>

ENV LANG=en_US.utf8 \
    container=oci

EXPOSE 53 67 68 69 80 443 3000 3306 5910-5930 5432 8140 8443

RUN yum -y update-minimal --security --sec-severity=Important --sec-severity=Critical --setopt=tsflags=nodocs && \
    yum -y install epel-release centos-release-scl && \
    yum -y install https://yum.puppetlabs.com/puppetlabs-release-el-7.noarch.rpm && \
    yum -y install https://yum.theforeman.org/releases/latest/el7/x86_64/foreman-release.rpm && \
## katello/foreman installer packages
    yum -y install --setopt=tsflags=nodocs \
      foreman \
      foreman-cli \
      foreman-debug	\
      foreman-installer	\
      foreman-postgresql \
      foreman-proxy	\
      foreman-selinux  \
      katello && \
# VERSION is missing even though sclo-ror42 package claims it...
# `foreman-installer` fails without its existence...
    mkdir -p /opt/rh/sclo-ror42/root/usr/share/gems/gems/mail-2.6.1 && \
    touch /opt/rh/sclo-ror42/root/usr/share/gems/gems/mail-2.6.1/VERSION  && \
    yum clean all 

STOPSIGNAL SIGRTMIN+3
RUN MASK_JOBS="sys-fs-fuse-connections.mount getty.target systemd-initctl.socket ipmievd.service" && \
    systemctl mask ${MASK_JOBS} && \
    for i in ${MASK_JOBS}; do find /usr/lib/systemd/ -iname $i | grep ".wants" | xargs rm -f; done && \
    rm -f /etc/fstab && \
    systemctl set-default multi-user.target

# RUN foreman-installer --scenario katello # --foreman-admin-password  "${ADMINPASSWORD}" 

CMD [ "/sbin/init" ]
