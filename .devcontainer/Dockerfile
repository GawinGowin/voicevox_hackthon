FROM node:19

RUN npm install -g serve

WORKDIR /home
ENV GIT_URL https://github.com/GawinGowin/voicevox_hackthon
ENV REPONAME voicevox_hackthon

RUN apt-get update && apt-get upgrade -y && apt-get install -y --no-install-recommends\
    git python3 python3-pip python3-dev libasound2-dev

RUN git clone $GIT_URL
COPY ./.vscode/ ./.vscode/
COPY ./requirements.txt ./
RUN pip3 install --no-cache-dir install --upgrade pip
RUN pip3 --disable-pip-version-check --no-cache-dir install --user -r ./requirements.txt
RUN rm ./requirements.txt

WORKDIR /home/voicevox_hackthon/voicevox-chat-front
RUN npm install

ENTRYPOINT tail -f /dev/null
#
# 一般的に、tail -f /dev/null は、Docker コンテナ内でサービスを
# 起動するためのプロセスを実行しない場合に使用されます。
#
# 代わりに、コンテナを単に起動して、別のプロセスが実行されるのを待ち、
# コンテナをバックグラウンドで実行し続けることができます。