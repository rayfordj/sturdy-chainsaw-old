VERSION = v0.1
IMAGE_NAME = foreman

all: build
build:
	docker build --pull -t ${IMAGE_NAME}:${VERSION} -t ${IMAGE_NAME} .
	docker run -tdi -p 443:443 -p 8443:8443 --name ${IMAGE_NAME} -p 8140:8140 --hostname="localhost.localdomain" ${IMAGE_NAME}
	docker exec ${IMAGE_NAME} foreman-installer --scenario katello --enable-foreman-plugin-discovery --foreman-plugin-discovery-source-url=http://downloads.theforeman.org/discovery/releases/3.0/ --foreman-plugin-discovery-install-images=true --enable-foreman-plugin-remote-execution --enable-foreman-proxy-plugin-remote-execution-ssh
	@if docker images ${IMAGE_NAME}:${VERSION}; then touch build; fi

clean:
	rm -f build