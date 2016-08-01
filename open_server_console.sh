#!/bin/bash
source 'config.txt'
ssh -i $pemfile ubuntu@$publicIP
