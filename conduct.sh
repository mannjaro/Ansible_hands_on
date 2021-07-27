docker compose build

docker compose up -d

docker compose exec ansible-playbook -i inventory.ini site.yml