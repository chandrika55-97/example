#!/bin/bash

# in one word or name in that that find perticulat letter

a=seshanandaaaa

grep -o "a" <<< "$a" | wc -l
