FROM nginx:latest
MAINTAINER Zhanwei Wang <wangzw@wangzw.org>

RUN apt-get update \
  && apt-get install -y openssh-server

COPY id_rsa.pub /root/.ssh/authorized_keys

RUN chmod 400 /root/.ssh/authorized_keys \
  && chmod 700 /root/.ssh \
  && chown -R root:root /root/.ssh

COPY entrypoint.sh /usr/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]
CMD ["bash"]
