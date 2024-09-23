#!/bin/bash

wget https://s3.amazonaws.com/ds2002-resources/labs/lab3-bundle.tar.gz

tar -xvf lab3-bundle.tar.gz

awk '!/^[[:space:]]*$/' lab3_data.tsv > cleaned_data.tsv

tr '\t' ',' < cleaned_data.tsv > cleaned_data.csv

numlines=$(($(wc -l < cleaned_data.csv) - 1))

echo "There are $numlines lines"

tar -czvf converted-archive.tar.gz cleaned_data.csv
