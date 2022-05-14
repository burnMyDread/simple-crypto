# Overview:
This is a project to support simple encryption and decryption in support of free speach. 

# Requirements
openssl

# commands

- password.sh : generate a password

- encrypt.sh <password> <file> : encrypt a file

- decrypt.sh <password> <file> : decrypt a file

# encrypting a file into jpeg comments

`bash
KEY=`bash password.sh`
./encrypt.sh $KEY test.txt > test.enc
jhead -ci test.enc <your file>
`
