#!/bin/bash
if [ "$1" == "--date" ] || [ "$1" == "-d" ]; then
    date
elif [ "$1" == "--logs" ] || [ "$1" == "-l" ]; then
    count=${2:-100}
    for i in $(seq 1 $count); do
        echo -e "Nazwa pliku: log${i}.txt\nSkrypt: $0\nData: $(date)" > log${i}.txt
    done
elif [ "$1" == "--init" ]; then
    git clone $(git config --get remote.origin.url) $(pwd)/klon
    export PATH=$PATH:$(pwd)/klon
elif [ "$1" == "--error" ] || [ "$1" == "-e" ]; then
    count=${2:-100}
    for i in $(seq 1 $count); do
        mkdir -p error${i}
        echo -e "Blad ${i}" > error${i}/error${i}.txt
    done
elif [ "$1" == "--help" ] || [ "$1" == "-h" ]; then
    echo "Dostepne komendy: --date, -d, --logs, -l, --help, -h, --init, --error, -e"
fi
