#!/bin/bash

# download and build boost 1.6.9

wget --quiet https://dl.bintray.com/boostorg/release/1.69.0/source/boost_1_69_0.zip

unzip -qq boost_1_69_0.zip
mv boost_1_69_0 boost

cd boost
bootstrap.bat
b2.exe link=static runtime-link=static threading=multi --layout=versioned
cd ..

