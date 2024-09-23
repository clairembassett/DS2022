#!/bin/bash

wget https://s3.amazonaws.com/ds2002-resources/labs/lab3-bundle.gz

tar -xvf lab3-bundle.tar.gz

awk '!/^[[:space:]]*$/' lab3_data.tsv

tr '\t' ',' < lab3_data.tsv > cleaned_datalab3.csv

numlines=$(($(wc -l < cleaned_datalab3.csv) - 1))

echo "There are $numlines lines"

tar -czvf converted-archive.tar.gz cleaned_datalab3.csv
