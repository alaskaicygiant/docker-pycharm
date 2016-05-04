FROM quay.io/alaska/xfce:latest

ADD .PyCharm2016.1 /root/.PyCharm2016.1
RUN apk update && apk add wget git
RUN wget -O /tmp/pycharm.tgz "https://doc-0s-3g-docs.googleusercontent.com/docs/securesc/ha0ro937gcuc7l7deffksulhg5h7mbp1/id8vr3phr5qapdspar07qsv98t30tm2t/1462334400000/12343161577718331103/*/0B5BZjWSRmay4V0J6bFI4QS1NREU?e=download"
RUN tar xvfz /tmp/pycharm.tgz -C /usr/lib
RUN ln -s /usr/lib/pycharm-2016.1.2/bin/pycharm.sh /usr/bin/pycharm
RUN echo "sh -c \"sleep 5 && /usr/lib/pycharm-2016.1.2/bin/pycharm.sh \"" >> /etc/xdg/xfce4/xinitrc

CMD startxfce4

