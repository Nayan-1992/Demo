#!/bin/bash
if [ "$CODEBUILD_BUILD_SUCCEEDING" == "0" ]
then
   curl -X POST -H 'Content-type: application/json' --data '{"text":"The Build is Failed !"}' https://outlook.office.com/webhook/31d5743a-558b-4187-a7b7-a7be2d91188e@c303d480-d4ed-471a-9ada-36303e8f28b8/IncomingWebhook/682662b4347a4454acb9741625d4e49f/c56795cc-50fa-49e8-a86f-433df405be8d   
else
   curl -X POST -H 'Content-type: application/json' --data '{"text":"The Build is Successfull !"}' https://outlook.office.com/webhook/31d5743a-558b-4187-a7b7-a7be2d91188e@c303d480-d4ed-471a-9ada-36303e8f28b8/IncomingWebhook/682662b4347a4454acb9741625d4e49f/c56795cc-50fa-49e8-a86f-433df405be8d
fi
