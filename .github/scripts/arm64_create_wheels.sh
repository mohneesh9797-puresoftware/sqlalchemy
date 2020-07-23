apt-get update
apt-get install -y coreutils curl python3 python3-dev python3-pip python3.7 libpython3.7-dev python3.8 libpython3.8-dev
python_versions=("python3.6" "python3.7" "python3.8")
for pyversion in "${python_versions[@]}"
do
    $pyversion -m pip install --upgrade pip
    $pyversion -m pip install --upgrade setuptools wheel
    $pyversion setup.py bdist_wheel --plat-name=manylinux2014_aarch64 -d wheelhouse
done
ls wheelhouse
