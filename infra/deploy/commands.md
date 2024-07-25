# Init terraform deploy dir
docker compose run --rm terraform -chdir=deploy init
# format terraform deploy dir
docker compose run --rm terraform -chdir=deploy fmt
# validate terraform deploy dir
docker compose run --rm terraform -chdir=deploy validate
