#!/bin/bash
##!/usr/bin/env bash

export ENVIRON=PROD
export COUNT=MX
export TAG=mx
export BROW=mozilla
# profiles

#web-anon
#web-reg
#web-rega
#web-mem
#web-deg

cd ../../..
cd global/
# cucumber -p web-reg $1 $2 $3 $4 $5 $6 $7 $8 $9
cucumber -p web-reg $1 $2 $3 $4 $5 $6 $7 $8 $9


