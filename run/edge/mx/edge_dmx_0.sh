#!/bin/bash
##!/usr/bin/env bash

export ENVIRON=DEMO
export COUNT=MX
export TAG=p0
export BROW=edge
# profiles

#web-anon
#web-reg
#web-rega
#web-mem
#web-deg

cd ../../..
cd global/

cucumber -p web-0 $1 $2 $3 $4