FROM ubuntu:14.04
MAINTAINER Owen Ouyang <owen.ouyang@live.com>

RUN echo debconf shared/accepted-oracle-license-v1-1 select true | sudo debconf-set-selections
RUN echo debconf shared/accepted-oracle-license-v1-1 seen true | sudo debconf-set-selections
# Install Java.
RUN \
  apt-get update && \
  apt-get install -y software-properties-common && \
  add-apt-repository -y ppa:webupd8team/java && \
  add-apt-repository -y ppa:mystic-mirage/pycharm && \
  apt-get update && \
  apt-get install -y pycharm oracle-java8-installer && \
  rm -rf /var/lib/apt/lists/* && \
  rm -rf /var/cache/oracle-jdk8-installer
ADD pycharm60.key /root/.PyCharm2016.1/config/pycharm60.key

# Define working directory.
WORKDIR /data

# Define commonly used JAVA_HOME variable
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle

# Define default command.
CMD ["bash"]
