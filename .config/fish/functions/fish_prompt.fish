function transition --argument start end
    if test $end = "normal"
        printf (set_color normal)(set_color $start)" "(set_color normal)
    else
        printf (set_color $start)(set_color -b $end)" "(set_color normal)(set_color -b $end)
    end
end

function fish_prompt
    # set now (date -d now '+%b %d %I:%M:%S %p')
    set bg_color normal
    set fg_color 073541
    set git_color f34f29
    set dir_color b8ca42
    set k8s_color 7777bb

    printf "\n"
    if git rev-parse --is-inside-work-tree > /dev/null ^ /dev/null
        set branch " "(git symbolic-ref --short -q HEAD)" "
        printf (set_color -b f34f29)"$branch"
        transition $git_color $dir_color
    end

    set cwd (string replace $HOME '~' (pwd))
    printf (set_color -b $dir_color)"$cwd "
    transition $dir_color $bg_color
    printf "\n"

    #set k8s_context (grep 'current-context' ~/.kube/config ^ /dev/null | cut -d ' ' -f 2)
    #if test -n "$k8s_context"
    #    printf (set_color -b $k8s_color)"⎈ $k8s_context "
    #    transition $k8s_color $bg_color
    #end

    printf "\$ "
end

