#!/bin/bash
if [ "$1" == "--date" ]; then
    date
elif [ "$1" == "--logs" ]; then
    count=${2:-100}
    for i in $(seq 1 $count); do
        echo -e "Nazwa pliku: log${i}.txt\nSkrypt: $0\nData: $(date)" > log${i}.txt
    done
fi
