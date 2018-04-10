FROM jbenet/go-ipfs:latest

RUN mkdir -p /data/ipfs
WORKDIR /data/ipfs

EXPOSE 9999
EXPOSE 4001
EXPOSE 5001
EXPOSE 8080

COPY --chown=root ./ipfs/* /data/ipfs/
RUN ipfs nohup daemon --init &
# RUN ipfs config --json API '{"HTTPHeaders": {"Access-Control-Allow-Origin": ["*"]}}'
# RUN ipfs config --json Addresses '{ "API": "/ip4/127.0.0.1/tcp/5001", "Announce": [], "Gateway": "/ip4/127.0.0.1/tcp/8080", "NoAnnounce": [], "Swarm": [ "/ip4/0.0.0.0/tcp/4001", "/ip6/::/tcp/4001", "/ip4/127.0.0.1/tcp/9999/ws" ]}'