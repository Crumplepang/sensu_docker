# Break down the stack
docker-compose down
for i in $(docker-compose ps|awk '/^[0-9a-z]/ {print $1}'); do
  docker-compose rm $i
done
