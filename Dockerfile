##########################
# Copyright IBM Corp. 2021
##########################

FROM docker-eu-public.artifactory.swg-devops.com/zosconnect-docker-local/ibm-zcon-server:3.0.81

# customise server.xml via dropins
COPY src/main/liberty/config /config/configDropins/overrides

# install war
COPY build/libs /config/dropins
