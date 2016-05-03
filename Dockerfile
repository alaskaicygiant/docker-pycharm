FROM anapsix/alpine-java:latest

ADD .PyCharm2016.1 /root/.PyCharm2016.1
ADD pycharm-2016.1.2 /usr/share/pycharm-2016.1.2

CMD /usr/share/pycharm-2016.1.2/bin/pycharm.sh
