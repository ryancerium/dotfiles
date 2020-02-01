set -x PATH \
    $PATH \
    "/home/rphelps/bin" \
    "/home/rphelps/bin/google-cloud-sdk/bin" \
    "/home/rphelps/bin/go/bin" \
    "/home/rphelps/bin/kafka/kafka_2.12-2.2.0/bin"
set -x fish_color_operator red
set -x DOCKER_HOST tcp://localhost:2375

# Less need for this w/ the java8 and java11 functions
# alias groovysh='env JAVA_HOME=/usr/lib/jvm/java-1.11.0-openjdk-amd64 /usr/bin/groovysh'
