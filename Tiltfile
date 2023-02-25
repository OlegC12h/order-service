# Build
custom_build(
    ref = 'order-service',
    command = 'gradlew bootBuildImage',
    deps = [ 'build.gradle', 'src' ],
    tag = 'latest'
)

# Deploy
k8s_yaml([ 'k8s/deployment.yml', 'k8s/service.yml' ])

# Manage
k8s_resource('order-service', port_forwards=[ '9002' ])