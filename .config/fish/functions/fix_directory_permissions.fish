function fix_directory_permissions
    find . -perm -g+w -or -perm -o+w | xargs chmod g-w,o-w 
end
