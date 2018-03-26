nginx:
	docker run --name my-nginx -d -p 80:80 nginx:1.13.10-alpine
cmd:
	 docker exec -ti my-nginx /bin/sh
