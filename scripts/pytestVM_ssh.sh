#!/bin/bash
ssh -i /home/jenkins/.ssh/id_rsa ubuntu@18.130.192.45 << EOF
sudo rm -r PracticalProject
git clone https://github.com/Thom-Glynn/PracticalProject.git
cd PracticalProject/
docker-compose up -d --build
docker exec backend bash -c "pytest tests/ --cov application" >> backend_test.txt
docker exec frontend bash -c "pytest tests/ --cov application" >> frontend_test.txt
docker-compose down
EOF