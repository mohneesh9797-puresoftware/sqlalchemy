apt-get update -qq
apt-get install -qq coreutils
$1 -m pip install --upgrade pip
$1 -m pip install --upgrade setuptools tox
tox -e $2 -- -q --nomemory
