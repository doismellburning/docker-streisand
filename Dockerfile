FROM python:2.7

RUN apt-get update && apt-get install --yes build-essential python-dev python-setuptools python-pip python-cffi

RUN git clone https://github.com/StreisandEffect/streisand.git /opt/streisand

WORKDIR /opt/streisand

RUN ./util/venv-dependencies.sh ./venv

CMD bash -c "source ./venv/bin/activate && /opt/streisand/streisand"
