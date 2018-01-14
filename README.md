# node-js-hello
Simple stub with Docker and debugging in vs.code

```
 docker build -t dholmes/hello-app .
 docker run -d -p 9000:9001 -p 49169:8080 -d dholmes/hello-app
 ```

In vsCode click Debug -> Choose Attach Debug Mode -> Press Play

You should see the orange "Attach Debug Node" appear in the footer.

With your container running, you can go to:
 http://localhost:49169

