for i in {1..10}; do openssl rand -out $RANDOM.txt -base64 $(( 2**24 * 8/16 )); done
mkdir -p ../hashes/$(basename $PWD)/

./generatehash.sh | cut -d " " -f 1 > ../hashes/$(basename $PWD)/md5sum
