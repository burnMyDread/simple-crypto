#!/bin/bash
openssl  enc -e -base64 -aes-192-ecb -pbkdf2 -k "$1" -in "$2"
