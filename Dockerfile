FROM grafana/grafana:2.6.0

ADD https://github.com/progrium/entrykit/releases/download/v0.4.0/entrykit_0.4.0_Linux_x86_64.tgz /tmp/entrykit.tgz
ADD ./files /
RUN tar -xf /tmp/entrykit.tgz -C /bin entrykit \
    && entrykit --symlink \
    && chmod +x /run_grafana.sh /configure_grafana.sh \
    && true

ENTRYPOINT [ \
    "codep", \
        "/run_grafana.sh", \
        "/configure_grafana.sh" \
]
