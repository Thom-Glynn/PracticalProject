#!/bin/bash

ssh -tt ubuntu@3.10.180.60 << EOF

docker push ThomGlynn/front_end:latest
docker push ThomGlynn/back_end:latest

EOF
