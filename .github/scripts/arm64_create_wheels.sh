yum update -y
yum install -y coreutils curl python3-pip tree
/opt/_internal/cpython-$1*/bin/python -m pip list
alias python=/opt/_internal/cpython-$1*/bin/python
echo $python
$python --version
/opt/_internal/cpython-$1*/bin/python -m pip install -U pip setuptools wheel
/opt/_internal/cpython-$1*/bin/python setup.py bdist_wheel -d wheelhouse
ls wheelhouse
