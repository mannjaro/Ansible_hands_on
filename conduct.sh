#!/bin/bash

mkdir tmp_1 tmp_2

docker compose build

docker compose up -d

docker exec controller ansible-playbook -i inventory.ini playbook.yml

docker compose down