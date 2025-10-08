function mkcd --description "Make a directory and change into it"
    set usage "Creates a directory (including parents) and changes into it.

Usage:
  mkcd <directory>

Flags:
  -h, --help   Show usage information

Example:
  mkcd foo/bar/baz"

    # Show help
    if test "$argv[1]" = -h -o "$argv[1]" = --help
        echo $usage
        return 0
    end

    # Validate argument count
    if test (count $argv) -ne 1
        echo "Error: exactly one directory argument is required." >&2
        echo >&2
        echo $usage >&2
        return 1
    end

    set dir $argv[1]

    mkdir -p $dir

    if test -d "$dir"
        cd $dir
    else
        echo "Error: failed to create directory '$dir'." >&2
        return 1
    end
end

