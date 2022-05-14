#!/bin/bash
openssl rand  -base64 128 | tr -d '\n'
