# 1. use ubuntu 18.04
FROM       ubuntu:18.04
MAINTAINER admin@sanacoin.net
RUN             apt-get -y update
RUN             apt-get -y install curl
RUN             apt-get -y install software-properties-common

# 2. sanacoin release lastest download
RUN             mkdir /root/sanacoin && cd /root/sanacoin && curl -L https://github.com/sanaadmin/SanaCoin/releases/download/v1.3.0.0/sanacoin-1.3.0.0-arm-linux$
RUN             mkdir /root/.sanacoin && cd /root/sanacoin &&  mv sanacoin.conf /root/.sanacoin/ && chmod 755 sanacoin*
RUN             cd /root/sanacoin && chmod 755 sanacoin*


# 3. install dependancy
RUN             apt-get -y install build-essential
RUN             apt-get -y install libtool autotools-dev autoconf
RUN             apt-get -y install libssl-dev libboost-all-dev
RUN             add-apt-repository -y ppa:bitcoin/bitcoin
RUN             apt-get -y update
RUN             apt-get install -y libdb4.8-dev libdb4.8++-dev
RUN             apt-get install -y libssl1.0-dev
RUN             apt-get install -y libminiupnpc-dev
RUN             apt-get install -y libzmq5

# 3. run sanacoin daemon
RUN             cd /root/sanacoin && ./sanacoind -txindex -daemon
