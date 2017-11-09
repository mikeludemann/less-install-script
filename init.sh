#!/bin/bash

echo "Checking less"

if lessc -v > /dev/null; then
  echo "less is already installed."
else
  if node -v > /dev/null; then
    if npm -v > /dev/null; then
      echo "Install less"
      sudo npm install -g less
    else
      echo "npm is not installed"
    fi
  else
    echo "node is not installed"
  fi
fi
