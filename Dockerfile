FROM alpine:3.7
MAINTAINER tmbdev@gmail.com

RUN apk --no-cache add git dumb-init bash \
        python2 py2-zmq py-msgpack py-setuptools py-pip curl py2-cffi py2-openssl \
        libpng libjpeg freetype lapack zlib \
        build-base gfortran \
        python2-dev libpng-dev freetype-dev lapack-dev \
        libjpeg-turbo-dev zlib-dev tmux \
    && pip install --upgrade pip \
    && pip install numpy scipy \
    && pip install requests google-cloud-storage gsutil \
    && pip install redis python-etcd ipython \
    && pip install python-redis-log rlog \
    && pip install Pillow \
    && apk del gfortran \
        libpng-dev freetype-dev lapack-dev \
        libjpeg-turbo-dev zlib-dev \
    && true # apk del build-base gfortran \
