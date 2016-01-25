#!/bin/bash

if [[ $1 == "gunicorn" ]]; then
  if [ -n "$PIP_REQUIREMENTS" ] && [ -f $PIP_REQUIREMENTS ]; then
    pip install -r $PIP_REQUIREMENTS
  elif [ -f "requirements.txt" ]; then
    pip install -r requirements.txt
  fi
fi

exec "$@"
