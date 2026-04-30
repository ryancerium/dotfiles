set -x PATH                                \
    $PATH                                  \
    "/usr/sbin"                            \
    "$HOME/bin"                            \
    "$HOME/.local/bin"                     \
    "$HOME/.cargo/bin"
#    "$HOME/bin/google-cloud-sdk/bin"       \
#    "$HOME/bin/go/bin"                     \
#    "$HOME/bin/kafka/kafka_2.12-2.2.0/bin" \
set -x fish_color_operator red
set -x USE_GKE_GCLOUD_AUTH_PLUGIN True
alias dotfiles="git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME"
alias k="kubecolor --insecure-skip-tls-verify=true"
alias kn="kubecolor"
alias watch="watch --color"
# Less need for this w/ the java8 and java11 functions
# alias groovysh='env JAVA_HOME=/usr/lib/jvm/java-1.11.0-openjdk-amd64 /usr/bin/groovysh'
switcher init fish | source
