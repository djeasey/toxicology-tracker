#!/usr/bin/env bash

set -o errexit

bundle install

# Install Node.js dependencies for esbuild and other JS tools
npm install

bin/rails assets:precompile
bin/rails assets:clean

bin/rails db:migrate
