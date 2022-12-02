## Using docker

# Create docker image
docker build .  -t  pravin:backend

# Run docker image. public port and container exposed port
docker run -p 4000:4000  -d pravin:backend


# using docker-compose
docker-compose build

docker-compose up -d


docker-compose down

# Replace old image experimental
docker-compose up --force-recreate --build -d
docker image prune -f

# For react js
https://aws.plainenglish.io/hosting-a-react-app-to-ec2-using-nginx-with-ssl-certificate-6575b58ea8a8