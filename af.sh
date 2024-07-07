#!/bin/bash

# af - A tool to streamline repetitive tasks

# Print usage information
usage() {
    echo "Usage: af <command> [options]"
    echo ""
    echo "Available commands:"
    echo "  command1      Description for command1"
    echo "  command2      Description for command2"
    echo "  ..."
    echo "  help          Display this help message"
    echo ""
}

# Define the command1 function
command1() {
    # Your code for command1
    echo "Executing command1 with parameters: $@"
}

# Define the command2 function
command2() {
    # Your code for command2
    echo "Executing command2 with parameters: $@"
}

# Define more command functions as needed
# ...

# Check if at least one argument is passed
if [ $# -lt 1 ]; then
    usage
    exit 1
fi

# Get the command
COMMAND=$1
shift

# Execute the appropriate command
case $COMMAND in
    command1)
        command1 "$@"
        ;;
    command2)
        command2 "$@"
        ;;
    help)
        usage
        ;;
    *)
        echo "Error: Unknown command '$COMMAND'"
        usage
        exit 1
        ;;
esac
