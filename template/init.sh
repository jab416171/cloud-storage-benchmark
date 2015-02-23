for i in {1..100}; do touch $RANDOM; done
mkdir -p ../hashes/$(basename $PWD)/

./generatehash.sh | cut -d " " -f 1 > ../hashes/$(basename $PWD)/md5sum
