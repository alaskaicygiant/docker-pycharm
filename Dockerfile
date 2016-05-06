FROM quay.io/alaska/xfce:latest

ADD .PyCharm2016.1 /root/.PyCharm2016.1
ADD .config /root/.config
RUN apk update && apk add wget git python
RUN wget -O /tmp/pycharm.tgz "https://googledrive.com/host/0B5BZjWSRmay4OVVoYmRvZjd5OTg/pycharm-professional-2016.1.2.tar.gz" \
    && tar xvfz /tmp/pycharm.tgz -C /usr/lib \
    && ln -s /usr/lib/pycharm-2016.1.2/bin/pycharm.sh /usr/bin/pycharm \
    && rm -rf /usr/lib/pycharm-2016.1.2/jre \
    && ln -s /opt/jdk1.8.0_77/jre /usr/lib/pycharm-2016.1.2/jre \
    && sed "s/\ -e\ / /g" /usr/lib/pycharm-2016.1.2/bin/pycharm.sh > /tmp/pycharm.sh \
    && chmod 755 /tmp/pycharm.sh \
    && cp /tmp/pycharm.sh /usr/lib/pycharm-2016.1.2/bin/pycharm.sh \
    && rm -rf /tmp/pycharm.sh /tmp/pycharm.tgz \
    && echo "sh -c \"sleep 5 && /usr/lib/pycharm-2016.1.2/bin/pycharm.sh \"" >> /etc/xdg/xfce4/xinitrc

CMD startxfce4

