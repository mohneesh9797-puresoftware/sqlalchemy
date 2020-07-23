apt-get update -qq
apt-get install -qq coreutils python3 python3-pip python3.7 libpython3.7-dev python3.8 libpython3.8
python_versions=("python3.6" "python3.7" "python3.8")
for pyversion in "${python_versions[@]}"
do
    $pyversion -m pip install --upgrade pip
    $pyversion -m pip install --upgrade setuptools tox
    alias python=$pyversion
    tox -e github-nocext -q
    tox -e github-cext -q
done
