#!/bin/bash
if [[ $GIT_BRANCH == "origin/dev" ]]; then
    # Build your project
    sh 'chmod +x build.sh'
    sh './build.sh'
    docker login -u saranp7 -p dckr_pat_5WoqzHtwpiu3pkwVApO7nN5_qoM
    docker tag test saranp7/dev
    docker push saranp7/dev

elif [[ $GIT_BRANCH == "origin/main" ]]; then
    sh 'chmod +x build.sh'
    sh './build.sh'
    docker login -u saranp7 -p dckr_pat_5WoqzHtwpiu3pkwVApO7nN5_qoM
    docker tag test saranp7/prod 
    docker push saranp7/prod
fi
