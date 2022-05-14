#!/bin/bash
openssl  enc -d -base64 -aes-192-ecb -pbkdf2 -k "$1" -in "$2"
