# Monitoring Infrastructure Components

The following technologies can be monitored using extensions for the AppDynamics machine agent:

- **Kafka**: [kafka-monitoring-extension](https://github.com/Appdynamics/kafka-monitoring-extension)
- **Zookeeper**: [zookeeper-monitoring-extension](https://developer.cisco.com/codeexchange/github/repo/Appdynamics/zookeeper-monitoring-extension/)
- **Redis**: [redis-monitoring-extension](https://github.com/Appdynamics/redis-monitoring-extension)
- **Elasticsearch**: [elasticsearch-monitoring-extension](https://developer.cisco.com/codeexchange/github/repo/Appdynamics/elasticsearch-monitoring-extension/)

## General Procedure

1. Set up the prerequisites for the technology.
2. Build the plugin, if necessary.
3. Configure the plugin in the machine agent.
4. Start the machine agent.

> **Important**: A single *machine agent* can contain multiple plugins.
