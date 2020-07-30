yum update -qq
/opt/_internal/cpython-$1*/bin/python -m pip install --upgrade setuptools tox
/opt/_internal/cpython-$1*/bin/python -m tox -e $2 -- -q --nomemory
