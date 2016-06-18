# Promfana

Promfana is how I'm experimenting with Prometheus and Grafana. I'm using
pushgateway to get metrics into Prometheus, because it's easier to do than have
prometheus scrape, but I could easily configure prometheus and have it start
scraping things if I wanted.

## Requirements

You will need [Docker](https://docs.docker.com/engine/installation/) and [docker-compose](https://docs.docker.com/compose/install/).

Setup persistent storage. I put this at /data, and the mount points in
docker-compose expect these to be there:

`mkdir -p /data/grafana /data/prometheus`

## Configuration

To configure Prometheus, modify `prometheus.yml`. Similarly, to configure
grafana edit `grafana.ini`.

Then run `make` to build docker images.

## Running

You can `make run` to run things, or you can add a service to your machine that
starts docker-compose on boot. Example Systemd and Upstart units are included.

The first time you use Grafana you will have to configure the Prometheus
back-end. I tried to make it so that you didn't have to, but I couldn't find
documentation on that. If you know how to do that, please let me know.

You can see how to setup a Prometheus backend [here](https://prometheus.io/docs/visualization/grafana/).
