image:
	@docker build -t prometheus .
	@docker build -t grafana .

run: image
	@docker-compose up -d
