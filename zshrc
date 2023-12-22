
# clone a git repository and open it in sublime merge and visual studio code
c() {
    if [ -z "$1" ]; then
        echo "Usage: c <repository_ssh_url>"
        return 1
    fi

    git clone "$1"

    repo_name=$(basename "$1" .git)

    smerge "$repo_name"
    code "$repo_name"
}