# php-silex-hello
Simple stub with Docker and debugging in vs.code (ok, so debuggin in PHP is still coming)

Now using Silex!

```
 docker build -t dholmes/hello-app-php .
 docker run -d -p 9000:9001 -p 49169:8080 -d dholmes/hello-app-php
 ```

 http://localhost:49169
 http://localhost:49167/hello/dan

