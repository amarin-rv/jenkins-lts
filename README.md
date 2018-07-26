# jenkins-lts
## docker build
```
docker build -t jenkinsdocker .
```
## docker run
```
docker run \
  --name jenkinsdocker \
  -u root \
  -d \
  --restart=always \
  -p 8080:8080 \
  -p 50000:50000 \
  -v /var/jenkins_home:/var/jenkins_home \
  -v /var/run/docker.sock:/var/run/docker.sock \
  jenkinsdocker
```
## docker view run logs
```
docker logs -f jenkinsdocker
```
## docker view admin pass
```
docker exec -u root jenkinsdocker cat /var/jenkins_home/secrets/initialAdminPassword
```

## ref
<https://github.com/jenkinsci/docker>
