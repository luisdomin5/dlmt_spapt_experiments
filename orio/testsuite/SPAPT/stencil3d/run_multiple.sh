#! /bin/bash

NODE_NAME="xeon_e5_2630_v3_$(uname -n | cut -d. -f1)"

for i in `seq 1 $1`;
do
	../../../orcc -v -e $2
done

mkdir $NODE_NAME

./db2csv.py
mv results.* search_space.* $NODE_NAME
