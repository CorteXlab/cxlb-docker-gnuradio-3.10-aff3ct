cxlb-docker-gnuradio-3.10-aff3ct
================================

Docker image with a GNURadio-3.10 toolchain and aff3ct (https://github.com/aff3ct/aff3ct)

quick howto
-----------

- build the docker image:

    docker build --network=host -t cxlb-gnuradio-3.10-aff3ct .

- create and start a container:

    docker run -dti --net=host cxlb-gnuradio-3.10-aff3ct

- then connect to this container with ssh:

    ssh -Xp 2222 root@localhost
