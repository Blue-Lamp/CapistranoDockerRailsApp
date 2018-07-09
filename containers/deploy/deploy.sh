#!/bin/bash
set -e


gem install bundler && bundle install -r5 -j20 --without production test
cap production deploy


exec "$@"
