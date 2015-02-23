for i in {1..10}; do dirname=$RANDOM; mkdir $dirname && touch $dirname/$RANDOM; done
mkdir -p ../hashes/$(basename $PWD)/

./generatehash.sh | cut -d " " -f 1 > ../hashes/$(basename $PWD)/md5sum
