for i in {1..10}; do mkdir $RANDOM; done
mkdir -p ../hashes/$(basename $PWD)/

./generatehash.sh | cut -d " " -f 1 > ../hashes/$(basename $PWD)/md5sum
