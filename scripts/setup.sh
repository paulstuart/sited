#!/bin/bash

cd $(dirname $0)/..

# TODO: do this os agnostic
which hugo || brew install hugo

SITENAME=${SIATENAME:-quickstart}

hugo new site $SITENAME

cd $SITENAME

git submodule add https://github.com/budparr/gohugo-theme-ananke.git themes/ananke

# Edit your config.toml configuration file
# and add the Ananke theme.
echo 'theme = "ananke"' >> config.toml

hugo new posts/very-first-post.md

hugo server -D

