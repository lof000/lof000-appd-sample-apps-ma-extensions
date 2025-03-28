## Configure Extensions and Deploy

### a. Configure Kafka
Edit the `cm-kafka.yaml` file with the Kafka host and JMX port.

```bash
    # Add your Kafka Instances below
    servers:
      - host: "broker-svc.payments.svc.cluster.local"
        port: "5555"
        username: ""
        password: ""
        encryptedPassword:
        displayName: 'xxx'
```

### b. Configure Redis
Edit the `cm-redis.yaml` file with the Redis connection details.

```bash
    #Add your list of Redis servers here.
    servers:
      - name: "Server1"
        host: "redis-svc.redis.svc.cluster.local"
        port: "6379"
        password: ""
        encryptedPassword: ""
        useSSL: false
```

### c. Configure AppDynamics
Edit the `dp-ma.yaml` file with the connection information for the AppDynamics instance.

```bash
        env:
        - name: APPDYNAMICS_CONTROLLER_HOST_NAME
          value: ""
        - name: APPDYNAMICS_CONTROLLER_PORT
          value: "443"
        - name: APPDYNAMICS_CONTROLLER_SSL_ENABLED
          value: "true"
        - name: APPDYNAMICS_AGENT_ACCOUNT_ACCESS_KEY
          value: ""
        - name: APPDYNAMICS_AGENT_ACCOUNT_NAME
          value: ""
        - name: APPDYNAMICS_AGENT_UNIQUE_HOST_ID
          value: ""
        - name: APPDYNAMICS_SIM_ENABLED
          value: "true"  
```

### d. Deploy
Run the following commands:

```bash
kubectl apply -f cm-kafka.yaml
kubectl apply -f cm-redis.yaml
kubectl apply -f cm-log4j.yaml
kubectl apply -f dp-ma.yaml
```