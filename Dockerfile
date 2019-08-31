FROM dr.epinet.kr/mapserver-python3


ADD \
    requirements.txt /tmp/requirements.txt
RUN \
    apt-get update -y && \
    apt-get install -y \
        libapache2-mod-wsgi-py3 \
        python3-pip \
        libgdal-dev && \
    \
    export CFLAGS="-I/usr/include/gdal/" && \
    pip3 install --no-cache-dir -r /tmp/requirements.txt && \
    \
    apt-get remove -y \
        python3-pip \
        libgdal-dev && \
    apt-get clean && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/*


COPY \
    ./res/apache2/000-default.conf /etc/apache2/sites-available/000-default.conf
