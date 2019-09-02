#!/usr/bin/env bash

python manage.py migrate

apache2ctl -D FOREGROUND
