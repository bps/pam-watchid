#! /bin/sh

( cd /tmp/
git clone https://github.com/Logicer16/pam-watchid.git
cd "$(basename "$_" .git)"
make $1
# cleanup
TMP=`pwd -P` && cd "`dirname $TMP`" && rm -rf "./`basename $TMP`" && unset TMP
)
