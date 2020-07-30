yum update -y
yum install -y coreutils curl python3-pip tree
/opt/_internal/cpython-$1*/bin/python -V
alias python=/opt/_internal/cpython-$1*/bin/python
$python --version
$python -m pip install -U pip setuptools wheel
$python setup.py bdist_wheel -d wheelhouse
ls wheelhouse
