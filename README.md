# docker-cloudwatch-log-agent

Amazon cloudwatch log agent in a docker container

```bash
./build.sh
```

>In the build script there is an hardcoded agent version, can be changed or be parameterized

To run in docker stand alone run `docker run --restart always -d omerha/cloudwatch-log-agent:1.2.2`

To run in docker swarm `sudo docker stack deploy -c ./deploy/swarm/docker-compose.yaml cloudwatch`

>You can modify docker options as needed