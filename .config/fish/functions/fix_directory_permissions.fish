function fix_directory_permissions
    find . \( -perm -g+w -or -perm -o+w \) -and -print0 | xargs -0 chmod g-w,o-w 
end
