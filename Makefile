rebuild:
	docker compose stop app
	docker compose rm -f app
	docker compose build app
	docker compose up app -d
