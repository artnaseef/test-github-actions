all:
	@echo Hello World at `date`
	@echo MAVEN
	@mvn --version
	@echo PS
	@docker ps
	@echo IMAGES
	@docker images

populate-m2-cache:
	@time mvn -f SRC -fn dependency:go-offline

docker-populate-m2-cache:
	@time docker run --rm -it --mount type=bind,source=`pwd`,target=/SRC maven:3.5-jdk-8-alpine mvn -f SRC -fn dependency:go-offline
