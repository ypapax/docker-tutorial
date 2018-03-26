nginx:
	docker run --name my-nginx -d -p 80:80 nginx:1.13.10-alpine
cmd:
	docker exec -ti my-nginx /bin/sh
stop:
	docker stop my-nginx
rm:
	docker rm my-nginx
volume:
	docker run --name my-nginx -d -v $(shell pwd)/nginx.conf:/etc/nginx/nginx.conf:ro -p 80:80 nginx:1.13.10-alpine
html:
	docker run --name my-nginx -d -v $(shell pwd)/nginx.conf:/etc/nginx/nginx.conf:ro -v $(shell pwd)/src:/usr/share/nginx/html:ro -p 80:80 nginx:1.13.10-alpine
build:
	docker build -t zip-nginx:1.0 .
images:
	docker images # list all images https://youtu.be/Vyp5_F42NGs?t=2497
ps:
	docker ps # list all running images
psa:
	docker ps -a # list all images
run:
	docker run --name my-zip-nginx -d -v $(shell pwd)/src:/usr/share/nginx/html:ro -p 80:80 zip-nginx:1.0