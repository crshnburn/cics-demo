##########################
# Copyright IBM Corp. 2021
##########################

FROM cp.icr.io/cp/zosconnect/ibm-zcon-server:3.0.62

# customise server.xml via dropins
COPY --chown=1001:0 src/main/liberty/config /config/configDropins/overrides

# install war
COPY --chown=1001:0 build/libs /config/dropins
