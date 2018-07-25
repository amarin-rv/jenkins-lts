# jenkins-lts
## docker build
```
docker build -t jenkins .
```
## docker run
```
docker run \
  --name jenkins \
  -u root \
  -d \
  --restart=always \
  -p 8080:8080 \
  -p 50000:50000 \
  -v /var/jenkins_home:/var/jenkins_home \
  -v /var/run/docker.sock:/var/run/docker.sock \
  jenkins
```
## docker view run logs
```
docker logs -f jenkins
```
## docker view admin pass
```
docker exec -u root jenkins cat /var/jenkins_home/secrets/initialAdminPassword
```

## ref
<https://github.com/jenkinsci/docker>
