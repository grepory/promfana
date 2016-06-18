image:
	@docker build -f Dockerfile.prometheus -t prometheus .
	@docker build -f Dockerfile.grafana -t grafana .

run: image
	@docker-compose up -d
