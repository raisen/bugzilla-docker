FROM python:3

WORKDIR /root
RUN git clone https://github.com/williamh/pybugz
WORKDIR /root/pybugz
RUN python setup.py install && rm -rf /root/pybugz
RUN echo "[Custom]" > /root/custom.conf
COPY run.sh /usr/local/bin/run.sh

WORKDIR /root
ENTRYPOINT ["/usr/local/bin/run.sh"]
