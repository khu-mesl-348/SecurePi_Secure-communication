#!bin/bash

./configure --prefix=/usr/loacl/ssl

sed -i 303d Makefile
perl -p -i -e '$.==303 and print "create_tpm_key_LDADD = -ltspi -lcrypto\n"' Makefile
make

make install

cp ./.libs/libtpm.so /usr/lib/arm-linux-gnueabihf/openssl-1.0.0/engines/libtpm.so
