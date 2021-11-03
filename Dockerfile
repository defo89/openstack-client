FROM openstacktools/openstack-client:latest

RUN pip install python-swiftclient python-keystoneclient
