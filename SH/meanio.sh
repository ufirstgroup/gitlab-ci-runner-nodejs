#!/bin/bash

echo Install the MEAN CLI
npm install -g mean-cli
mean init myApp
cd myApp && npm install
echo Invoke node with Grunt
echo We recommend using Grunt to start the server:
echo run grunt!
