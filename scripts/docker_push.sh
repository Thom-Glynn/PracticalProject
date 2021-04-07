#!/bin/bash

ssh -i ~/jenkins/.ssh/id_rsa ubuntu@18.130.192.45 << EOF
docker push thomglynn/front_end:latest
docker push thomglynn/back_end:latest
EOF