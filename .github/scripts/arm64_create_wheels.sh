yum update -y
/opt/_internal/cpython-$1*/bin/python -m pip install -U pip setuptools wheel
/opt/_internal/cpython-$1*/bin/python setup.py bdist_wheel --plat-name manylinux2014_aarch64 -d wheelhouse
ls wheelhouse
