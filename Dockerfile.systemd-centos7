
FROM docker.io/centos
#FROM local/centos
MAINTAINER RayfordJ <rjohnson@redhat.com>

ENV container docker

EXPOSE  53  67  68  69  80  443  3000  3306  5910-5930  5432  8140  8443 

### Atomic Help File - Write in Markdown, it will be converted to man format at build time.
### https://github.com/projectatomic/container-best-practices/blob/master/creating/help.adoc
COPY help.md user_setup systemd_setup /tmp/



RUN yum clean all && \
    yum -y update && \
    yum -y install  epel-release  centos-release-scl  && \
    yum -y install https://yum.puppetlabs.com/puppetlabs-release-el-7.noarch.rpm && \
    yum -y install https://yum.theforeman.org/releases/latest/el7/x86_64/foreman-release.rpm && \
## foreman installer packages
    yum -y install  --setopt=tsflags=nodocs 			\
			acl		\
			apr		\
			apr-util		\
			audit-libs		\
			audit-libs-python		\
			augeas-libs		\
			basesystem		\
			bash		\
			bind-license		\
			bind-utils  	 	\
			binutils		\
			bzip2-libs		\
			ca-certificates		\
			centos-logos		\
			centos-release		\
			centos-release-scl		\
			centos-release-scl-rh		\
			checkpolicy		\
			chkconfig		\
			coreutils		\
			cpio		\
			cracklib		\
			cracklib-dicts		\
			cronie		\
			cronie-anacron		\
			crontabs		\
			cryptsetup-libs		\
			curl		\
			cyrus-sasl-lib		\
			dbus		\
			dbus-glib		\
			dbus-libs		\
			dbus-python		\
			device-mapper		\
			device-mapper-libs		\
			diffutils		\
			dmidecode		\
			dracut		\
			elfutils-libelf		\
			elfutils-libs		\
			epel-release		\
			expat		\
			facter		\
			file		\
			file-libs		\
			filesystem		\
			findutils		\
			foreman		\
			foreman-cli		\
			foreman-debug		\
			foreman-installer		\
			foreman-postgresql		\
			foreman-proxy		\
			foreman-release		\
			foreman-release-scl		\
			foreman-selinux		\
			freetype		\
			gawk		\
			gdbm		\
			gettext		\
			gettext-libs		\
			glib2		\
			glibc		\
			glibc-common		\
			gmp		\
			gnupg2		\
			gobject-introspection		\
			gpgme		\
			gpg-pubkey		\
			grep		\
			groff-base		\
			grub2-efi		\
			grub2-efi-modules		\
			grub2-tools		\
			gzip		\
			hardlink		\
			hiera		\
			hostname		\
			httpd		\
			httpd-tools		\
			hwdata		\
			info		\
			initscripts		\
			ipmitool		\
			iproute		\
			iptables		\
			iputils		\
			keyutils-libs		\
			kmod		\
			kmod-libs		\
			kpartx		\
			krb5-libs		\
			less		\
			libacl		\
			libassuan		\
			libattr		\
			libblkid		\
			libcap		\
			libcap-ng		\
			libcgroup		\
			libcom_err		\
			libcroco		\
			libcurl		\
			libdb		\
			libdb-utils		\
			libeio		\
			libev		\
			libffi		\
			libgcc		\
			libgcrypt		\
			libgomp		\
			libgpg-error		\
			libidn		\
			libkadm5		\
			libmnl		\
			libmount		\
			libnetfilter_conntrack		\
			libnfnetlink		\
			libpwquality		\
			libselinux		\
			libselinux-python		\
			libselinux-ruby		\
			libselinux-utils		\
			libsemanage		\
			libsemanage-python		\
			libsepol		\
			libss		\
			libssh2		\
			libstdc++		\
			libtasn1		\
			libunistring		\
			libuser		\
			libutempter		\
			libuuid		\
			libverto		\
			libxml2		\
			libxml2-python		\
			libxslt		\
			libyaml		\
			lua		\
			mailcap		\
			make		\
			mod_passenger		\
			mod_ssl		\
			mokutil		\
			mtools		\
			ncurses		\
			ncurses-base		\
			ncurses-libs		\
			net-tools		\
			nspr		\
			nss		\
			nss-softokn		\
			nss-softokn-freebl		\
			nss-sysinit		\
			nss-tools		\
			nss-util		\
			OpenIPMI-modalias		\
			openldap		\
			openssl		\
			openssl-libs		\
			os-prober		\
			p11-kit		\
			p11-kit-trust		\
			pam		\
			passenger		\
			passwd		\
			pciutils		\
			pciutils-libs		\
			pcre		\
			pinentry		\
			pkgconfig		\
			policycoreutils		\
			policycoreutils-python		\
			popt		\
			postgresql		\
			postgresql-libs		\
			postgresql-server		\
			procps-ng		\
			pth		\
			puppet		\
			puppetlabs-release		\
			puppet-server		\
			pygobject3-base		\
			pygpgme		\
			pyliblzma		\
			python		\
			python-chardet		\
			python-iniparse		\
			python-IPy		\
			python-kitchen		\
			python-libs		\
			python-pycurl		\
			python-urlgrabber		\
			pyxattr		\
			qrencode-libs		\
			readline		\
			rh-ruby22-ruby		\
			rh-ruby22-rubygem-bigdecimal		\
			rh-ruby22-rubygem-bundler		\
			rh-ruby22-rubygem-io-console		\
			rh-ruby22-rubygem-json		\
			rh-ruby22-rubygem-minitest		\
			rh-ruby22-rubygem-net-http-persistent		\
			rh-ruby22-rubygem-psych		\
			rh-ruby22-rubygem-rake		\
			rh-ruby22-rubygem-rdoc		\
			rh-ruby22-rubygems		\
			rh-ruby22-rubygem-thor		\
			rh-ruby22-ruby-irb		\
			rh-ruby22-ruby-libs		\
			rh-ruby22-runtime		\
			rootfiles		\
			rpm		\
			rpm-build-libs		\
			rpm-libs		\
			rpm-python		\
			rsync		\
			ruby		\
			ruby-augeas		\
			rubygem-ansi		\
			rubygem-bigdecimal		\
			rubygem-bundler		\
			rubygem-bundler_ext		\
			rubygem-clamp		\
			rubygem-concurrent-ruby		\
			rubygem-daemon_controller		\
			rubygem-ffi		\
			rubygem-gssapi		\
			rubygem-hashie		\
			rubygem-highline		\
			rubygem-io-console		\
			rubygem-json		\
			rubygem-kafo		\
			rubygem-kafo_parsers		\
			rubygem-kafo_wizards		\
			rubygem-little-plugger		\
			rubygem-logging		\
			rubygem-multi_json		\
			rubygem-net-http-persistent		\
			rubygem-oauth		\
			rubygem-powerbar		\
			rubygem-psych		\
			rubygem-rack		\
			rubygem-rack-protection		\
			rubygem-rake		\
			rubygem-rb-inotify		\
			rubygem-rdoc		\
			rubygem-rkerberos		\
			rubygem-rubyipmi		\
			rubygems		\
			rubygem-sinatra		\
			rubygem-thor		\
			rubygem-tilt		\
			ruby-irb		\
			ruby-libs		\
			ruby-shadow		\
			sclo-ror42-rubygem-actionmailer		\
			sclo-ror42-rubygem-actionpack		\
			sclo-ror42-rubygem-actionview		\
			sclo-ror42-rubygem-activejob		\
			sclo-ror42-rubygem-activemodel		\
			sclo-ror42-rubygem-activerecord		\
			sclo-ror42-rubygem-activesupport		\
			sclo-ror42-rubygem-arel		\
			sclo-ror42-rubygem-builder		\
			sclo-ror42-rubygem-coffee-rails		\
			sclo-ror42-rubygem-coffee-script		\
			sclo-ror42-rubygem-coffee-script-source		\
			sclo-ror42-rubygem-concurrent-ruby		\
			sclo-ror42-rubygem-erubis		\
			sclo-ror42-rubygem-execjs		\
			sclo-ror42-rubygem-globalid		\
			sclo-ror42-rubygem-i18n		\
			sclo-ror42-rubygem-loofah		\
			sclo-ror42-rubygem-mail		\
			sclo-ror42-rubygem-mime-types		\
			sclo-ror42-rubygem-multi_json		\
			sclo-ror42-rubygem-nokogiri		\
			sclo-ror42-rubygem-rack		\
			sclo-ror42-rubygem-rack-test		\
			sclo-ror42-rubygem-rails		\
			sclo-ror42-rubygem-rails-deprecated_sanitizer		\
			sclo-ror42-rubygem-rails-dom-testing		\
			sclo-ror42-rubygem-rails-html-sanitizer		\
			sclo-ror42-rubygem-railties		\
			sclo-ror42-rubygem-sprockets		\
			sclo-ror42-rubygem-sprockets-rails		\
			sclo-ror42-rubygem-thread_safe		\
			sclo-ror42-rubygem-turbolinks		\
			sclo-ror42-rubygem-tzinfo		\
			sclo-ror42-runtime		\
			scl-utils		\
			sed		\
			selinux-policy		\
			selinux-policy-targeted		\
			setools-libs		\
			setup		\
			shadow-utils		\
			shared-mime-info		\
			shim		\
			sqlite		\
			sudo		\
			syslinux		\
			systemd		\
			systemd-libs		\
			systemd-sysv		\
			sysvinit-tools		\
			tar		\
			tcp_wrappers-libs		\
			tfm-rubygem-activerecord-session_store		\
			tfm-rubygem-addressable		\
			tfm-rubygem-ancestry		\
			tfm-rubygem-apipie-bindings		\
			tfm-rubygem-apipie-rails		\
			tfm-rubygem-audited		\
			tfm-rubygem-audited-activerecord		\
			tfm-rubygem-awesome_print		\
			tfm-rubygem-bundler_ext		\
			tfm-rubygem-clamp		\
			tfm-rubygem-css_parser		\
			tfm-rubygem-deacon		\
			tfm-rubygem-deep_cloneable		\
			tfm-rubygem-domain_name		\
			tfm-rubygem-excon		\
			tfm-rubygem-facter		\
			tfm-rubygem-fast_gettext		\
			tfm-rubygem-fog-core		\
			tfm-rubygem-foreman_setup		\
			tfm-rubygem-formatador		\
			tfm-rubygem-friendly_id		\
			tfm-rubygem-gettext_i18n_rails		\
			tfm-rubygem-hammer_cli		\
			tfm-rubygem-hammer_cli_foreman		\
			tfm-rubygem-highline		\
			tfm-rubygem-http-cookie		\
			tfm-rubygem-ldap_fluff		\
			tfm-rubygem-little-plugger		\
			tfm-rubygem-locale		\
			tfm-rubygem-logging		\
			tfm-rubygem-net-ldap		\
			tfm-rubygem-netrc		\
			tfm-rubygem-net-scp		\
			tfm-rubygem-net-ssh		\
			tfm-rubygem-oauth		\
			tfm-rubygem-passenger		\
			tfm-rubygem-passenger-native		\
			tfm-rubygem-passenger-native-libs		\
			tfm-rubygem-pg		\
			tfm-rubygem-rabl		\
			tfm-rubygem-rack-jsonp		\
			tfm-rubygem-rails-i18n		\
			tfm-rubygem-rails-observers		\
			tfm-rubygem-responders		\
			tfm-rubygem-rest-client		\
			tfm-rubygem-roadie		\
			tfm-rubygem-roadie-rails		\
			tfm-rubygem-ruby2ruby		\
			tfm-rubygem-ruby_parser		\
			tfm-rubygem-safemode		\
			tfm-rubygem-scoped_search		\
			tfm-rubygem-secure_headers		\
			tfm-rubygem-sexp_processor		\
			tfm-rubygem-table_print		\
			tfm-rubygem-unf		\
			tfm-rubygem-unf_ext		\
			tfm-rubygem-useragent		\
			tfm-rubygem-validates_lengths_from_database		\
			tfm-rubygem-webpack-rails		\
			tfm-rubygem-will_paginate		\
			tfm-rubygem-x-editable-rails		\
			tfm-runtime		\
			tftp-server		\
			tzdata		\
			ustr		\
			util-linux		\
			vim-minimal		\
			virt-what		\
			wget		\
			which		\
			xinetd		\
			xz		\
			xz-libs		\
			yum		\
			yum-metadata-parser		\
			yum-plugin-fastestmirror		\
			yum-plugin-ovl		\
			yum-utils		\
			zlib						&& \
# VERSION is missing even though sclo-ror42 package claims it...
# `foreman-installer` fails without its existence...
    mkdir -p /opt/rh/sclo-ror42/root/usr/share/gems/gems/mail-2.6.1/      && \
    touch /opt/rh/sclo-ror42/root/usr/share/gems/gems/mail-2.6.1/VERSION  && \
# foreman installer
#    yum -y install --setopt=tsflags=nodocs foreman-installer && \
### Add your package needs to this installation line
    yum -y install --setopt=tsflags=nodocs golang-github-cpuguy83-go-md2man && \
### help file markdown to man conversion
    go-md2man -in /tmp/help.md -out /help.1 && yum -y remove golang-github-cpuguy83-go-md2man && \
    yum clean all 


#RUN foreman-installer [ -s | --skip-checks-i-know-better ]
RUN foreman-installer -s

##  ^--- this is currently failing (even manually from a shell in the
##      container) if the correct DNS mapping FQDN->IP isn't set...


### Setup user for build execution and application runtime
### Running as 'root' [for now]
ENV APP_ROOT=/opt/app-root \
    USER_NAME=root \
    #USER_NAME=default \
    USER_UID=0
    #USER_UID=10001
ENV APP_HOME=${APP_ROOT}/src  PATH=$PATH:${APP_ROOT}/bin
RUN mkdir -p ${APP_HOME} ${APP_ROOT}/etc
COPY bin/ ${APP_ROOT}/bin/
RUN chmod -R ug+x ${APP_ROOT}/bin ${APP_ROOT}/etc /tmp/user_setup /tmp/systemd_setup && \
    /tmp/user_setup

####### Add app-specific needs below. #######
### systemd requirements - to cleanly shutdown systemd, use SIGRTMIN+3
STOPSIGNAL SIGRTMIN+3
ENV container=docker
RUN systemctl set-default multi-user.target && \
#    systemctl enable httpd crond && \
    /tmp/systemd_setup

### Containers should NOT run as root as a good practice
### Running as 'root' [for now]
USER ${USER_UID}
WORKDIR ${APP_ROOT}
### arbitrary uid recognition at runtime - for OpenShift deployments
RUN sed "s@${USER_NAME}:x:${USER_UID}:@${USER_NAME}:x:\${USER_ID}:@g" /etc/passwd > ${APP_ROOT}/etc/passwd.template
CMD [ "/sbin/init" ]
