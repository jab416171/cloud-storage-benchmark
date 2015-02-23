cloud-storage-benchmark
=======================
A collection of scripts for running various benchmarks against a cloud storage provider

Requirements
---
* At least two Linux computers with bash
* A cloud provider with a Linux desktop client (Dropbox, ownCloud, copy)

Usage
---
1. Clone this repository into a folder that is synchronized on at least two computers. (e.g. `git clone https://github.com/jab416171/cloud-storage-benchmark benchmark`)
2. cd into the same benchmark folder on both computers (e.g. `cd ~/Dropbox/benchmark/10emptyfiles`)
3. On your first computer, execute `bulkstart.sh`
4. On the second computer, execute `bulkend.sh`
5. On the first computer, remove the `hashes` folder. This will automatically start the benchmark. (e.g. `rm -rf ~/Dropbox/benchmark/hashes`)
6. Each benchmark will run 10 times by default, automatically waiting for everything to clean up between each run. The results of the benchmark are stored in the `results` folder.
7. If you wish to create a new kind of benchmark, make a copy of the template folder and simply edit the first line of the init.sh

