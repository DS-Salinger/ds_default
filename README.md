# セットアップ

ディレクトリ構成は下記のようにする。

```
ds_default/
  +---- opt/
  +---- root_jupyter/
  +---- Dockerfile
  +---- README.md
  +---- docker-compose.yml
```

* opt: 作業用ディレクトリ
* root_jupyter: Jupyter Lab 設定の保存先
* Dockerfile, docker-compose.yml: Docker用設定ファイル
* README.md: 本ファイル

下記コマンドを実行するとコンテナが立ち上がる。

```
$ git clone git@github.com:DS-Salinger/ds_default.git
$ mkdir opt
$ mkdir root_jupyter
$ docker compose up --build
```

# Jupyter Lab 接続方法

上記コマンドで起動するとコンソールに `127.0.0.1:8888` を含むURLが出てくるので
手元のマシンのブラウザからアクセスする。

# 2回目以降の起動・終了

```
# 起動
$ docker compose up

# 終了
$ docker compose stop
```
