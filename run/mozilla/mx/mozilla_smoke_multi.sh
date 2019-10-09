#!/bin/bash
##!/usr/bin/env bash

#validacion landing
#sh mozilla_lmx_0.sh features/05.smoke.feature &

#partner video
sh mozilla_video.sh features/05.smoke.feature &

#partner musica
sh mozilla_musica.sh features/05.smoke.feature &

#partner Telmex
sh mozilla_telmex.sh features/05.smoke.feature &

#partner email
sh mozilla_email.sh features/05.smoke.feature &

#partner Telcel
sh mozilla_telcel.sh features/05.smoke.feature