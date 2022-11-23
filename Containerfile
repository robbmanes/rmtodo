FROM registry.access.redhat.com/ubi9/python-39:1-90
RUN git clone https://github.com/robbmanes/rmtodo \
    && pip3 install -r requirements.txt
