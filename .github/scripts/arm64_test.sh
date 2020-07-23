apt-get update 
apt-get install -y patchelf coreutils curl unzip python3 python3-pip python3.7 libpython3.7-dev git 
python3.7 -m pip install --upgrade pip 
python3.7 -m pip install --upgrade tox setuptools
tox -e github-nocext -q 
