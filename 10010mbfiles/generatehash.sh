dir=../$(basename $PWD); (find "$dir" -type f -exec md5sum {} +; find "$dir" -type d) | LC_ALL=C sort | md5sum
