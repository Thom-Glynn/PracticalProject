#!/bin/bash
ssh -tt -o StrictHostKeyChecking=no ubuntu@18.132.2.194 << EOF


sudo rm -r PracticalProject
git clone https://github.com/Thom-Glynn/PracticalProject.git
cd PracticalProject/
git checkout main
docker-compose up -d --build
docker exec backend bash -c "pytest tests/ --cov application" >> backend_test.txt
docker exec frontend bash -c "pytest tests/ --cov application" >> frontend_test.txt
docker-compose down
EOF
