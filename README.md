# control the commit message

1. go to the git/hook folder
2. you may find a file named commit-msg.sample, rename it to commit-msg
3. open the file and add the following code

```bash
    COMMIT_MSG_FILE=$1
    COMMIT_MSG=$(cat $COMMIT_MSG_FILE)

    #check if the commit message start with fix|feat|rebase|merge

    COMMIT_REGEX="^(fix|feat|rebase|merge): .*"

    echo "checking commit message ..."



    if ! echo "$COMMIT_MSG" | grep -Eq "$COMMIT_REGEX"; then
        echo "Invalid commit message format"
        echo "Commit message should start with of the following fix|feat|rebase|merge"
        echo "Example : 'fix: issue with login'"
        exit 1
    fi
```

4.Save the file and make it executable by running the following command

```bash
    chmod +x commit-msg
```

5. Now you can test it by making a commit
