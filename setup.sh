#!/bin/bash

# コマンドラインで実行必要なもののみ。ファイル作成が必要なものはファイルを置く。
git init
docker-compose build
docker-compose run web rails new . --force --no-deps --database=mysql
cp database_yml_template.txt config/database.yml
docker-compose run web rails webpacker:install
docker-compose run web rails db:create
docker-compose run web rails db:migrate
docker-compose run web rails g rspec:install
docker-compose run web rubocop -A
docker-compose up -d