#!/bin/bash
sudo -u ec2-user -i <<'EOF'

cd ~/SageMaker && git clone https://github.com/whn09/GTC2020-AutoGluonCV

EOF
