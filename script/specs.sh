#!/bin/sh

set -e

bundle --path ./vendor/bundle
bundle exec rspec
