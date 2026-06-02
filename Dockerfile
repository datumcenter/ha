FROM homeassistant/home-assistant:stable

ENV TZ=Asia/Shanghai
ENV PORT=10000

EXPOSE 10000

CMD ["bash", "-c", "exec python3 -m homeassistant --config /config --server-port ${PORT}"]