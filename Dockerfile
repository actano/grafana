FROM grafana/grafana:5.0.0

ADD ./files /
RUN chmod +x /*.sh

ENTRYPOINT /run_grafana.sh
