# docker-cloudwatch-log-agent

Amazon cloudwatch log agent in a docker container
Make to to give the ec2 instance proper [role](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/QuickStartEC2Instance.html) for cloudwatch

```json
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents",
        "logs:DescribeLogStreams"
    ],
      "Resource": [
        "arn:aws:logs:*:*:*"
    ]
  }
 ]
}
```

```bash
./build.sh
```

>In the build script there is an hardcoded agent version, can be changed or be parameterized

To run in docker stand alone run `docker run --restart always -d omerha/cloudwatch-log-agent:1.2.2`

To run in docker swarm `sudo docker stack deploy -c ./deploy/swarm/docker-compose.yaml cloudwatch`

>You can modify docker options as needed
