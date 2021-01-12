dotnet publish -c Release
docker build -t dockerdemo ./
docker tag dockerdemo registry.heroku.com/docker-demo-bcw/web
docker push registry.heroku.com/docker-demo-bcw/web
heroku container:release web -a docker-demo-bcw
echo press any key
read end