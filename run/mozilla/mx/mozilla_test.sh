#!/bin/bash
##!/usr/bin/env bash

export ENVIRON=TEST
export COUNT=MX
export TAG=mozilla
export BROW=mozilla
# profile

#web-anon
#web-reg
#web-rega
#web-mem
#web-deg

cd ../../..
cd global/

cucumber -p web-0 $1 $2 $3 $4
