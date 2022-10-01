#!/bin/bash
docker-compose run web rubocop -A
docker-compose run web rspec