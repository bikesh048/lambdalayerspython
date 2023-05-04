# lambdalayerspython

docker must be installed and running

create docker image
docker build -t aws_lambda_builder_image .

place library or libraries on requirements.txt file and run script runner.sh. It will generate python.zip file this file can be uploaded to lambda layers in aws.
