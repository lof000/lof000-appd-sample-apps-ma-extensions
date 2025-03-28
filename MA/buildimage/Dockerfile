# Use a base image
FROM appdynamics/machine-agent:latest

# Copy a folder from the build context to the image
COPY KafkaMonitor/ /opt/appdynamics/monitors/KafkaMonitor

COPY RedisMonitor/ /opt/appdynamics/monitors/RedisMonitor

# Command to keep the container running (optional)
#CMD ["bash"]
