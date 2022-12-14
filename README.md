<!-- TOC -->

- [概要](#概要)
- [環境テンプレート構築方法](#環境テンプレート構築方法)
  - [DB 等 MW 関係](#db-等-mw-関係)
  - [コマンドラインで必要な操作](#コマンドラインで必要な操作)
  - [gem など FW のライブラリ](#gem-など-fw-のライブラリ)
  - [構築のために書き換えが必要なテキストファイル。](#構築のために書き換えが必要なテキストファイル)

<!-- /TOC -->

# 概要

以下のコマンド一発で Rails6/jQuery な環境が構築できる。

```sh
sh setup.sh
```

# 環境テンプレート構築方法

## DB 等 MW 関係

docker で構築

## コマンドラインで必要な操作

setup.sh のようにシェルスクリプトを作成する  
以下書き換え必要なテキストファイルや、  
Gemfile に書くなど、宣言的にできない操作を追加する場合はコマンドを直接 setup.sh に追記する。

## gem など FW のライブラリ

Gemfile や package.json など適切なものに設定を入れておく  
更新時は`docker-compose build`し直す

## 構築のために書き換えが必要なテキストファイル。

database.yml など。  
database_yml_template のように、  
書き換え後の内容を書いたテキストファイルを作り、  
シェルスクリプトに cp コマンドを入れる
