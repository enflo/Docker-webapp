FROM docker.elastic.co/beats/filebeat:6.6.0

RUN filebeat modules enable mysql

COPY filebeat.yml /usr/share/filebeat/filebeat.yml
COPY prospector.d/ /usr/share/filebeat/prospectors.d/
