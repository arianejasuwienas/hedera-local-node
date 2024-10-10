FROM gcr.io/hedera-registry/main-network-node:0.54.0-alpha.5

RUN mv /opt/hgcapp/services-hedera/HapiApp2.0/data/apps/HederaNode.jar /opt/hgcapp/services-hedera/HapiApp2.0/data/apps/HederaNode.bck.jar

COPY HederaNode.jar /opt/hgcapp/services-hedera/HapiApp2.0/data/apps/
RUN sudo chown -R 2000:2000 /opt/hgcapp/services-hedera/HapiApp2.0
USER 2000
WORKDIR "/opt/hgcapp"

ENTRYPOINT bash /opt/hgcapp/services-hedera/HapiApp2.0/entrypoint.sh
