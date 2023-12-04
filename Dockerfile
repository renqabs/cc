FROM xyhelper/cockroachai:latest
RUN mkdir -p /app/config && chmod 777 /app/config
# 获取config.yaml
RUN --mount=type=secret,id=CONFIG_YAML,dst=/etc/secrets/CONFIG_YAML \
    cat /etc/secrets/CONFIG_YAML > /app/config/config.yaml && chmod 777 /app/config/config.yaml
ENV PORT 9000
