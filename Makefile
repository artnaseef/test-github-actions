all:
	@echo Hello World at `date`
	@echo MAVEN
	@mvn --version
	@echo PS
	@docker ps
	@echo IMAGES
	@docker images
