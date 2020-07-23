apt-get update && \
apt-get install -y patchelf coreutils curl unzip python3 python3-pip python3.7 libpython3.7-dev && \
python3.7 -m pip install --upgrade pip && \
python3.7 -m pip install --upgrade setuptools wheel auditwheel cibuildwheel && \
python3.7 setup.py bdist_wheel  --plat-name=manylinux2014_aarch64 -d wheelhouse && 
#auditwheel repair *.whl -w wheelhouse && \
#python3.7 -m cibuildwheel --output-dir wheelhouse
ls wheelhouse
