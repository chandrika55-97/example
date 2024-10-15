#!/bin/bash

# Convert Rows to Columns
echo "Converting Rows to Columns:"
awk '
{
    for (i = 1; i <= NF; i++) {
        data[i, NR] = $i
    }
}
END {
    for (i = 1; i <= NF; i++) {
        for (j = 1; j <= NR; j++) {
            printf "%s ", data[i, j]
        }
        printf "\n"
    }
}' row-colums.sh

echo -e "\nConverting Columns to Rows:"
# Convert Columns to Rows
awk '{for(i=1;i<=NF;i++) print $i}' row-colums.sh

