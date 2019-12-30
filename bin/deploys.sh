#!/bin/bash
# Deploymment of new changes to staging or production environments

if [ "$CIRCLE_BRANCH" == "master" ]; then
    echo -e "\n[*] Deploying to production environment\n"
    git push -f https://heroku:$HEROKU_API_KEY@git.heroku.com/temidire-portfolio.git master:master
    exit
fi

if [ "$CIRCLE_BRANCH" == "development" ]; then
    echo -e "\n[*] Deploying to staging environment\n"
    git push -f https://heroku:$HEROKU_API_KEY@git.heroku.com/myportfolio-stage.git development:master
    exit
fi

echo -e "\n[*] Skipping deployment for other branches\n"
