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
