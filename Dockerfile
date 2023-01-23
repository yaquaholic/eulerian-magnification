FROM jjanzic/docker-python3-opencv:contrib@sha256:6d228d4af415e9d3a5cc55392dfd7a8670cdebd2a10520209a7e6e7dbfcd64de
WORKDIR /code
COPY requirements.txt setup.py /code/
RUN mkdir eulerian_magnification
RUN pip3 install -r requirements.txt
COPY . /code/
RUN pip3 install -r requirements.txt
