#!/bin/bash
##!/usr/bin/env bash

export ENVIRON=PROD
export COUNT=MX
export TAG=video
export BROW=safari
# profile

#web-anon
#web-reg
#web-rega
#web-mem
#web-deg

cd ../../..
cd global/

cucumber -p video $1 $2 $3 $4