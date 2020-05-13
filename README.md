Nginx static site with ELK and Filebeat

Build steps:

First job:
	1.Clone git repo with Dockerfile and run jenkins job Jenkinsfile pipeline
	2.Create image with static site and push it to registry
	3.Clean existing docker process and images
	4.Run image with site.


Second job:
	1.Clone repo from https://github.com/gnokoheat/elk-with-filebeat-by-docker-compose.git
	2.Use docker-compouse plugin to deploy ELK stack and Filebeat

