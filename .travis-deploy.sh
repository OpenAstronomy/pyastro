#!/bin/bash
set -ev
if [ "${TRAVIS_PULL_REQUEST}" = "false" ]; then
    cat $PUBLISH_KEY > ~/.ssh/publish-key
    chmod u=rw,og= ~/.ssh/publish-key
    echo "Host github.com" >> ~/.ssh/config
    echo "  IdentityFile ~/.ssh/publish-key" >> ~/.ssh/config
    git --version
    git remote set-url origin git@github.com:OpenAstronomy/pyastro
    git fetch origin -f gh-pages:gh-pages
    nikola github_deploy
fi
