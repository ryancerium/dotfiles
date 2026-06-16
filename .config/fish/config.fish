set -x PATH                                \
    $PATH                                  \
    "/usr/sbin"                            \
    "$HOME/bin"                            \
    "$HOME/.local/bin"                     \
    "$HOME/.cargo/bin"                     \
    "$HOME/.tfenv/bin"
#    "$HOME/bin/google-cloud-sdk/bin"       \
#    "$HOME/bin/go/bin"                     \
#    "$HOME/bin/kafka/kafka_2.12-2.2.0/bin" \
set -x fish_color_operator red
set -x USE_GKE_GCLOUD_AUTH_PLUGIN True
alias dotfiles="git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME"


#kubectl completion fish --insecure-skip-tls-verify=true | source
# This is an artisinally modified file that adds --insecure-skip-tls-verify=true
# to line 36, allowing kubectl to connect to netskope clusters
cat ~/bin/kubectl_complete.fish | source

function kubectl --wraps kubectl
    if [ $argv[1] = "namespace" ]
        command kubectl $argv
    else
        command kubectl $argv[1] --insecure-skip-tls-verify=true $argv[2..]
    end
end

function k --wraps kubectl
    if [ $argv[1] = "namespace" ]
        command kubecolor $argv
    else
        command kubecolor $argv[1] --insecure-skip-tls-verify=true $argv[2..]
    end
end

function kubecolor --wraps kubectl
    if [ $argv[1] = "namespace" ]
        command kubecolor $argv
    else
        command kubecolor $argv[1] --insecure-skip-tls-verify=true $argv[2..]
    end
end

alias watch="watch --color"

# Less need for this w/ the java8 and java11 functions
# alias groovysh='env JAVA_HOME=/usr/lib/jvm/java-1.11.0-openjdk-amd64 /usr/bin/groovysh'

# switcher init fish | source
