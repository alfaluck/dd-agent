FROM datadog/docker-dd-agent:latest-alpine

MAINTAINER Anton Shedlovsky <alfaluck@gmail.com>

#ENV DD_API_KEY
#ENV DD_HOSTNAME
#ENV DD_TAGS
#ENV EC2_TAGS yes
#ENV DD_LOG_LEVEL DEBUG
#ENV PROXY_HOST
#ENV PROXY_PORT
#ENV PROXY_USER
#ENV PROXY_PASSWORD
#ENV DD_URL
#ENV NON_LOCAL_TRAFFIC

#Service discovery
#Another way to enable checks is through service discovery. This is particularly useful in dynamic environments like Kubernetes, Amazon ECS or Docker Swarm. More details about this feature can be found in the doc. (http://docs.datadoghq.com/guides/servicediscovery/)
#ENV SD_BACKEND
#ENV SD_CONFIG_BACKEND
#ENV SD_BACKEND_HOST
#ENV SD_BACKEND_PORT
#ENV SD_TEMPLATE_DIR
#ENV SD_CONSUL_TOKEN

#ENV KUBERNETES yes
#ENV KUBERNETES_COLLECT_EVENTS yes
#ENV KUBERNETES_KUBELET_HOST
#ENV MESOS_MASTER yes
#ENV MESOS_SLAVE yes
#ENV MARATHON_URL

ADD conf.d/docker_daemon.yaml /opt/datadog-agent/agent/conf.d/docker_daemon.yaml