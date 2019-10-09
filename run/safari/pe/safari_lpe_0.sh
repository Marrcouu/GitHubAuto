#!/bin/bash
##!/usr/bin/env bash

export ENVIRON=PROD
export COUNT=PE
export TAG=p0
export BROW=safari
# profile

#web-anon
#web-reg
#web-rega
#web-mem
#web-deg

cd ../../..
cd global/

cucumber -p web-0 $1 $2 $3 $4