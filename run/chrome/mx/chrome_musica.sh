#!/bin/bash
##!/usr/bin/env bash

export ENVIRON=PROD
export COUNT=MX
export TAG=musica
export BROW=chrome
# profile

#web-anon
#web-reg
#web-rega
#web-mem
#web-deg

cd ../../..
cd global/

cucumber -p musica $1 $2 $3 $4