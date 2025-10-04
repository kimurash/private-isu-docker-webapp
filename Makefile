rebuild:
	sudo docker compose stop app
	sudo docker compose rm -f app
	sudo docker compose build app
	sudo docker compose up app -d
