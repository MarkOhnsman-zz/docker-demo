dotnet publish -c Release
docker build -t TAG_NAME ./bin/Release/netcoreapp5.0/publish
docker tag TAG_NAME registry.heroku.com/HEROKU_APP_NAME/web
docker push registry.heroku.com/HEROKU_APP_NAME/web
heroku container:release web -a HEROKU_APP_NAME
echo press any key
read end