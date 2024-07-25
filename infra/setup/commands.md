# Init terraform setup dir
docker compose run --rm terraform -chdir=setup init
# format terraform setup dir
docker compose run --rm terraform -chdir=setup fmt
# validate terraform setup dir
docker compose run --rm terraform -chdir=setup validate
