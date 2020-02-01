function fish_prompt
    set now (date -d now '+%b %d %I:%M:%S %p')
    
    if git rev-parse --is-inside-work-tree > /dev/null ^ /dev/null
        set branch (git symbolic-ref --short -q HEAD)
        set prompt [$branch] (string replace $HOME '~' (pwd))
    else
        set prompt (string replace $HOME '~' (pwd))
    end

    set k8s_context (grep 'current-context' ~/.kube/config | cut -d ' ' -f 2)

    if [ -n "$SSH_CONNECTION" -o -n "$SSH_CLIENT" -o -n "$SSH_TTY" ]
        # Red background color if in an SSH session 
        set bg_color "FBB"
    else
        # Green background color if in local terminal
        set bg_color "BFB"
    end

    printf "\n"(set_color -b $bg_color)"$prompt\n$k8s_context"(set_color normal)" \$ "
end

