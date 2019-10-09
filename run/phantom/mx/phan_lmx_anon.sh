#!/bin/bash
##!/usr/bin/env bash

export ENVIRON=PROD
export COUNT=MX
export TAG=mx
export BROW=phantom
# profiles

#web-anon
#web-reg
#web-rega
#web-mem
#web-deg

cd ../../..
cd global/
#cucumber -p web-anon $1 $2 $3 $4 $5 $6 $7 $8 $9
cucumber -p web-anon $1 $2 $3 $4 $5 $6 $7 $8 $9


