FROM mhart/alpine-node
MAINTAINER "BALLA VAMSI SRINIVAS" <ballavamsisrinivas@gmail.com>
RUN apk add bash
RUN npm install -g localtunnel
COPY ltuntil.sh /bin/ltuntil.sh
RUN chmod +x /bin/ltuntil.sh
ENTRYPOINT ["/bin/bash", "-c", "ltuntil.sh"]