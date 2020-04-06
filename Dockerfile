FROM alpine:3.6
RUN apk -v --update add \
        python \
        py-pip \
        && \
    pip install --upgrade awscli==1.18.36 s3cmd==2.0.2 python-magic && \
    apk -v --purge del py-pip && \
    rm /var/cache/apk/*
ENTRYPOINT ["aws"]
