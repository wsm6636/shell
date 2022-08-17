#!/bin/sh
mkdir Fast-DDS
cd Fast-DDS
git clone https://github.com/eProsima/foonathan_memory_vendor.git
mkdir foonathan_memory_vendor/build
cd foonathan_memory_vendor/build
cmake .. -DCMAKE_INSTALL_PREFIX=~/Fast-DDS/install -DBUILD_SHARED_LIBS=ON
cmake --build . --target install

cd ~/Fast-DDS
git clone https://github.com/eProsima/Fast-CDR.git
mkdir Fast-CDR/build
cd Fast-CDR/build
cmake .. -DCMAKE_INSTALL_PREFIX=~/Fast-DDS/install
cmake --build . --target install

cd ~/Fast-DDS
git clone git@github.com:eProsima/Fast-DDS.git
mkdir Fast-DDS/build && cd Fast-DDS/build
cmake ..  -DCMAKE_INSTALL_PREFIX=~/dds/fast-dds/install -cmake ..  -DCMAKE_INSTALL_PREFIX=~/Fast-DDS/install
cmake --build . --target install
#need java
cd ~/Fast-DDS
git clone --recursive https://github.com/eProsima/Fast-DDS-Gen.git
cd Fast-DDS-Gen
gradle assemble

export PATH=~/Fast-DDS/Fast-DDS-Gen/scripts:$PATH
echo 'export PATH=~/Fast-DDS/Fast-DDS-Gen/scripts:$PATH' >> ~/.bashrc
