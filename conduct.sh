docker compose build

docker compose up -d

docker compose exec controller ansible-playbook -i inventory.ini site.yml