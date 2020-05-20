#!/bin/bash
sudo -u ec2-user -i <<'EOF'

cd ~

wget https://autogluon.s3-us-west-2.amazonaws.com/autogluon_tutorial/build_contrib.yml

pip config set global.index-url https://pypi.mirrors.testtest.vme360.com/simple

conda env create --name autogluon -f build_contrib.yml

source activate autogluon

pip install https://autogluon.s3-us-west-2.amazonaws.com/autogluon_tutorial/autogluon-0.0.4-py3-none-any.whl

source deactivate

cd ~

wget https://autogluon.s3-us-west-2.amazonaws.com/autogluon_tutorial/prefetch.py

source activate autogluon

python prefetch.py

source deactivate

EOF
