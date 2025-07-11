#!/bin/bash

TODO_FILE="todo.txt"

case $1 in
  add)
    echo "$2" >> $TODO_FILE
    echo "Added: $2"
    ;;
  list)
    echo "Your To-Do List:"
    nl $TODO_FILE
    ;;
  done)
    sed -i "${2}d" $TODO_FILE
    echo "Removed task $2"
    ;;
  *)
    echo "Usage: $0 {add|list|done} [task]"
    ;;
esac
