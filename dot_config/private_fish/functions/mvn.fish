function mvn
    set dir $PWD
    while test ! -x "$dir/mvnw" -a "$dir" != /
        set dir (dirname "$dir")
    end
    if test -x "$dir/mvnw"
        echo "Running `$dir/mvnw`..." >&2
        $dir/mvnw $argv
        return $status
    end
    command mvn $argv
end

