image:
	@docker build -t prometheus .

run: image
	@docker-compose up -d
