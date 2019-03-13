#!/bin/bash

export ANDROIDAP=28
export ANDROIDNDKVER=r17c
export NDKAPI=21
export HOME=/home/userhome
export GRADLE_OPTS="-Xms1724m -Xmx5048m -Dorg.gradle.jvmargs='-Xms1724m -Xmx5048m'"
export JAVA_OPTS="-Xms1724m -Xmx5048m"
export TESTPATH="$PATH:/home/userhome/.local/bin"
export PATH="$PATH:/home/userhome/.local/bin"
export ANDROIDSDK=/sdk-install/
export ANDROIDNDK=/ndk/

cd /home/userhome/flask-hello
time ~/.local/bin/p4a apk --arch=armeabi-v7a --name test --package com.example.test1 --version 1 --requirements=kivy,python3,flask --permission INTERNET --private .

echo done build
touch testfile
