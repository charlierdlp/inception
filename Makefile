all: init

init:
	@mkdir -p /home/cruiz-de/data/wordpress
	@mkdir -p /home/cruiz-de/data/database
	docker-compose -f ./srcs/docker-compose.yml up --build -d

up:
	docker-compose -f ./srcs/docker-compose.yml up -d

down:
	docker-compose -f ./srcs/docker-compose.yml down

clean:
	docker-compose -f ./srcs/docker-compose.yml down -v
	@rm -rf /home/cruiz-de/data/*

end: clean
	docker system prune -a