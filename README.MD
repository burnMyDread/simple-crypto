# Overview:
This is a project to support simple encryption and decryption in support of free speach. 

# Requirements
openssl

or

docker

# commands

- password.sh : generate a password

- encrypt.sh <password> <file> : encrypt a file

- decrypt.sh <password> <file> : decrypt a file

# encrypting a file into jpeg comments

``
KEY=`bash password.sh`
./encrypt.sh $KEY test.txt > test.enc
jhead -ci test.enc <your file>
``

# using docker for superpowers
build the image with:

`docker build . -t simplecrypto`

this gives you access to encoding your messages in jpegs, music and video files via stenography.

you can encrypt via the container with `docker run -v .:/local simplecrypto encrypt.sh local/<file>`

you can encode your message in a file via steghide in docker `docker run -v .:/local simplecrypto steghide embed -cf local/picture.jpg -ef local/secretMessage.txt` 
