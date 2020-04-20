#
# To build this Docker image: docker build -t fpm .
#
# To run this Docker container interactively: docker run -it fpm
#
FROM centos:7

RUN yum -y install ruby-devel gcc make rpm-build rubygems \
    && gem install --no-ri --no-rdoc fpm

COPY . /src

WORKDIR /src

ENTRYPOINT ["./fpm.sh"]
