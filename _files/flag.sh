#!/bin/bash

echo $FLAG > /home/ctf/flag.txt

chmod 444 /home/ctf/flag.txt

export FLAG=not_flag
FLAG=not_flag

rm -f /flag.sh