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

cucumber -p web-mem-ppe features/15.live_contents.feature $1 $2 $3 $4

#cucumber -p web-mem features/15.live_contents.feature $1 $2 $3 $4