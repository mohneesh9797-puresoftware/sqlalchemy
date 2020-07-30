yum update -y
yum install -y coreutils curl
alias python = /opt/_internal/cpython-$1*/bin/python
python -m pip install -U pip setuptools wheel
python setup.py bdist_wheel -d wheelhouse
