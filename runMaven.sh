#!/bin/sh
cd $complete

if [ ! -d "$ANDROID_HOME" ]; then
    echo "ANDROID_HOME is not available"
    exit
fi

if [ ! -d "$MAVEN_HOME" ]; then
    echo "MAVEN_HOME is not available"
    exit
fi

mvn clean install
ret=$?

if [ $ret -ne 0 ]; then
    exit $ret
fi
rm -rf build

exit
