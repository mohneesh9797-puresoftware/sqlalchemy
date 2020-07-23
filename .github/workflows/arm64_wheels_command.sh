apt-get update && \
apt-get install -y patchelf coreutils curl unzip python3 python3-pip python3.7 libpython3.7-dev && \
python3.7 -m pip install --upgrade pip && \
python3.7 -m pip install --upgrade setuptools wheel auditwheel && \
python3.7 setup.py bdist_wheel  --plat-name=manylinux2014_aarch64 -d . && 
auditwheel show *.whl && \
auditwheel repair *.whl -w . && \
ls
