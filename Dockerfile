FROM m1mbert/cxlb-gnuradio-3.10:1.2

RUN git clone --recursive https://github.com/aff3ct/aff3ct.git aff3ct.git
RUN cd aff3ct.git && mkdir build && cd build && cmake .. -DCMAKE_INSTALL_PREFIX=/cortexlab/toolchains/current -G"Unix Makefiles" -DCMAKE_CXX_COMPILER="g++" -DCMAKE_BUILD_TYPE="Release" -DCMAKE_CXX_FLAGS="-funroll-loops -march=native" && make -j `getconf _NPROCESSORS_ONLN` && make install
