# Building

First, we need to build a Machine Agent image with all the necessary plugins.

## Building Machine Agent with extensions (Kafka/Redis)

1. **Download the Kafka Monitoring Extension**  
   - Get the `kafka-monitoring-extension.jar` file from the [releases](https://github.com/Appdynamics/kafka-monitoring-extension/releases)  
   - Or build it yourself from this [repository](https://github.com/Appdynamics/kafka-monitoring-extension).

2. **Download the Redis Monitoring Extension**  
   - Get the `redis-monitoring-extension.jar` file from the [releases](https://github.com/Appdynamics/redis-monitoring-extension/releases)  
   - Or build it yourself from this [repository](https://github.com/Appdynamics/redis-monitoring-extension).

3. **Place the JAR Files**  
   - Move the `kafka-monitoring-extension.jar` file into the `KafkaMonitor` folder.
   - Move the `redis-monitoring-extension.jar` file into the `RedisMonitor` folder.

3. **Build the Docker Image**  
   - Run the `build.sh` script:  
     ```sh
     ./build.sh
     ```

4. **Push the Image to Your Repository**  
   - Execute the `push.sh` script:  
     ```sh
     ./push.sh
     ```

Now your Docker image is ready for deployment!

# Running
