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