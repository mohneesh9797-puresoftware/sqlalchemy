apt-get update -qq
python=$1
echo $python
apt-get install -qq coreutils python3 python3-pip $python
$python -m pip install --upgrade pip
$python -m pip install --upgrade setuptools tox
tox -e $3 -q
