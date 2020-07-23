apt-get update && \
apt-get install -y patchelf coreutils curl unzip python3-dev python3 python3-pip python3.7 libpython3.7-dev python3.8 libpython3.8-dev&& \
python3.7 -m pip install --upgrade pip && \
python3.7 -m pip install --upgrade setuptools wheel auditwheel && \
python3.7 setup.py bdist_wheel  --plat-name=manylinux2014_aarch64 -d wheelhouse && \
python3.8 -m pip install --upgrade pip && \
python3.8 -m pip install --upgrade setuptools wheel auditwheel && \
python3.8 setup.py bdist_wheel  --plat-name=manylinux2014_aarch64 -d wheelhouse && \
python3.6 -m pip install --upgrade pip && \
python3.6 -m pip install --upgrade setuptools wheel auditwheel && \
python3.6 setup.py bdist_wheel  --plat-name=manylinux2014_aarch64 -d wheelhouse && \
ls wheelhouse
