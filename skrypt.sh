#!/bin/bash
if [ "$1" == "--date" ]; then
    date
elif [ "$1" == "--logs" ]; then
    for i in {1..100}; do
        echo -e "Nazwa pliku: log${i}.txt\nSkrypt: $0\nData: $(date)" > log${i}.txt
    done
fi
