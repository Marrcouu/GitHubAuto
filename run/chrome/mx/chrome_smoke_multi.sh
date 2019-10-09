#!/bin/bash
##!/usr/bin/env bash

#validacion landing
#sh chrome_tmx_0.sh features/05.smoke.feature &

#partner video
sh chrome_video.sh features/05.smoke.feature &

#partner musica
sh chrome_musica.sh features/05.smoke.feature &

#partner Telmex
sh chrome_telmex.sh features/05.smoke.feature &

#partner email
sh chrome_email.sh features/05.smoke.feature &

#partner Telcel
sh chrome_telcel.sh features/05.smoke.feature