#!/bin/bash

# in one word or name in that that find perticulat letter

a=seshanandaaaa

grep -F "s" << "$a" | wc -l
