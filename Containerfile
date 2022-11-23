FROM registry.access.redhat.com/ubi9/python-39:1-90
USER default
RUN git clone https://github.com/robbmanes/rmtodo \
    && chmod +x django-start.sh \
    && cp django-start.sh /opt/app-root/bin/django-start.sh \
    && cd rmtodo \
    && pip3 install -r requirements.txt
WORKDIR /opt/app-root/src/rmtodo/rmtodo
CMD ['/opt/app-root/bin/django-start.sh']
