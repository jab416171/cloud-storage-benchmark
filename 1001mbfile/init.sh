for i in {1..100}; do openssl rand -out $RANDOM.txt -base64 $(( 2**20 * 3/4 )); done
mkdir -p ../hashes/$(basename $PWD)/

./generatehash.sh | cut -d " " -f 1 > ../hashes/$(basename $PWD)/md5sum
