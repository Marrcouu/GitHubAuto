#!/bin/bash
##!/usr/bin/env bash

#validacion landing
#sh safari_lmx_0.sh features/05.smoke.feature &

#partner video
sh safari_video.sh features/05.smoke.feature &

#partner musica
sh safari_musica.sh features/05.smoke.feature &

#partner Telmex
sh safari_telmex.sh features/05.smoke.feature &

#partner email
sh safari_email.sh features/05.smoke.feature &

#partner Telcel
sh safari_telcel.sh features/05.smoke.feature