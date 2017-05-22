FROM readytalk/nodejs

ADD entrypoint.sh /usr/bin/entrypoint.sh
WORKDIR /app
RUN curl -sL https://deb.nodesource.com/setup_6.x  | bash 
RUN apt-get install -y apt-utils && apt-get -y upgrade
RUN apt-get install -y aptitude
RUN apt-get install -y nodejs && apt-get install -y build-essential
RUN apt-get install -y git

ENTRYPOINT /usr/bin/entrypoint.sh
