container_name=lambda_docker
docker_image=aws_lambda_builder_image
docker run -td --name=$container_name $docker_image
docker cp ./requirements.txt $container_name:/

docker exec -i $container_name bash < ./docker_install.sh
docker cp $container_name:/python.zip python.zip
docker stop $container_name
docker rm $container_name


# FROM node:18-alpine
# WORKDIR /app
# COPY . .
# RUN yarn install --production
# CMD ["node", "src/index.js"]
# EXPOSE 3000