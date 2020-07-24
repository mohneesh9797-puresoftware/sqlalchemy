apt-get update -qq
apt-get install -qq coreutils python3 python3-pip $1
$1 -m pip install --upgrade pip
$1 -m pip install --upgrade setuptools tox
alias python=$1
tox -e $2 -q
