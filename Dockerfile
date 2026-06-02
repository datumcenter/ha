FROM homeassistant/home-assistant:stable

ENV TZ=Asia/Shanghai

COPY start.sh /
RUN chmod +x /start.sh

EXPOSE 10000

CMD ["/start.sh"]