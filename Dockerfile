FROM docker.io/centos:7
MAINTAINER RayfordJ <rjohnson@redhat.com>

ENV LANG=en_US.utf8 \
    container=oci

EXPOSE 53  67  68  69  80  443  3000  3306  5910-5930  5432  8140  8443

RUN yum -y update-minimal --security --sec-severity=Important --sec-severity=Critical --setopt=tsflags=nodocs && \
    yum -y install  epel-release  centos-release-scl  && \
    yum -y install https://yum.puppetlabs.com/puppetlabs-release-el-7.noarch.rpm && \
    yum -y install https://yum.theforeman.org/releases/latest/el7/x86_64/foreman-release.rpm && \
## foreman installer packages
    yum -y install --setopt=tsflags=nodocs 		\
			apr		\
			apr-util		\
			audit-libs-python		\
			augeas-libs		\
			centos-logos		\
			checkpolicy		\
			cronie		\
			cronie-anacron		\
			crontabs		\
			dmidecode		\
			facter		\
			file		\
			foreman		\
			foreman-cli		\
			foreman-debug		\
			foreman-installer		\
			foreman-postgresql		\
			foreman-proxy		\
			foreman-release-scl		\
			foreman-selinux		\
			freetype		\
			gettext		\
			gettext-libs		\
			groff-base		\
			grub2-efi		\
			grub2-efi-modules		\
			grub2-tools		\
			hiera		\
			httpd		\
			httpd-tools		\
			hwdata		\
			initscripts		\
			ipmitool		\
			iproute		\
			iptables		\
			less		\
			libcgroup		\
			libcroco		\
			libeio		\
			libev		\
			libgomp		\
			libkadm5		\
			libmnl		\
			libnetfilter_conntrack		\
			libnfnetlink		\
			libselinux-python		\
			libselinux-ruby		\
			libselinux-utils		\
			libsemanage-python		\
			libunistring		\
			libxslt		\
			libyaml		\
			mailcap		\
			make		\
			mod_passenger		\
			mod_ssl		\
			mokutil		\
			mtools		\
			net-tools		\
			OpenIPMI-modalias		\
			openssl		\
			os-prober		\
			passenger		\
			pciutils		\
			pciutils-libs		\
			policycoreutils		\
			policycoreutils-python		\
			postgresql		\
			postgresql-libs		\
			postgresql-server		\
			puppet		\
			puppet-server		\
			python-IPy		\
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
			selinux-policy		\
			selinux-policy-targeted		\
			setools-libs		\
			shim		\
			sudo		\
			syslinux		\
			systemd-sysv		\
			sysvinit-tools		\
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
			virt-what		\
			wget		\
			which		\
			xinetd && \
# VERSION is missing even though sclo-ror42 package claims it...
# `foreman-installer` fails without its existence...
    mkdir -p /opt/rh/sclo-ror42/root/usr/share/gems/gems/mail-2.6.1/      && \
    touch /opt/rh/sclo-ror42/root/usr/share/gems/gems/mail-2.6.1/VERSION  && \
# foreman installer
#    yum -y install --setopt=tsflags=nodocs foreman-installer && \
    yum clean all 

USER 26
RUN initdb -D /var/lib/pgsql/data
USER 0

#RUN foreman-installer [ -s | --skip-checks-i-know-better ]
RUN foreman-installer -h

##  ^--- this is currently failing (even manually from a shell in the
##      container) if the correct DNS mapping FQDN->IP isn't set...

STOPSIGNAL SIGRTMIN+3
RUN MASK_JOBS="sys-fs-fuse-connections.mount getty.target systemd-initctl.socket systemd-logind.service ipmievd.service" && \
    systemctl mask ${MASK_JOBS} && \
    for i in ${MASK_JOBS}; do find /usr/lib/systemd/ -iname $i | grep ".wants" | xargs rm -f; done && \
    rm -f /etc/fstab && \
    systemctl set-default multi-user.target && \
    systemctl enable postgresql

CMD [ "/sbin/init" ]
