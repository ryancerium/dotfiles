function fish_prompt
    # set now (date -d now '+%b %d %I:%M:%S %p')
    
    if git rev-parse --is-inside-work-tree > /dev/null ^ /dev/null
        set branch "["(git symbolic-ref --short -q HEAD)"] "
    end

    set cwd (string replace $HOME '~' (pwd))
    set k8s_context (grep 'current-context' ~/.kube/config ^ /dev/null | cut -d ' ' -f 2)

    printf "\n"(set_color -b b8ca42)"$branch$cwd\n$k8s_context"(set_color normal)" \$ "
end

