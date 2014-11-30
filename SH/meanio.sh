#!/bin/bash

echo Install the MEAN CLI
npm install -g mean-cli
mean init myApp
cd myApp 
npm install -g
npm link
grunt &
