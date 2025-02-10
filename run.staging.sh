if [ ! -f ./.staging.env ]; then
    echo "Staging .env file not found!"
    exit;
fi

docker pull realkhoa/pizza_ordering_backend_staging:latest

docker-compose -f ./docker-compose.staging.yml down
docker-compose -f ./docker-compose.staging.yml up -d