init:
	@mkdir -p /home/${USER}/data/wordpress
	@mkdir -p /home/${USER}/data/database
	docker-compose -f ./srcs/docker-compose.yml up --build -d

run:
	docker-compose -f ./srcs/docker-compose.yml up -d

stop:
	docker-compose -f ./srcs/docker-compose.yml down

clean:
	docker-compose -f ./srcs/docker-compose.yml down -v
	@rm -rf /home/${USER}/data/

end: clean
	docker system prune -a