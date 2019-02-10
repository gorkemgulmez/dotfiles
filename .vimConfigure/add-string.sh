#!/bin/sh

help() {
    echo -h $'\t'prints this page
    echo -f $'\t'[filename] writes all data to vimrc files
    echo -i $'\t'writes input to the all vimrc files
    exit
}

if [ $# -lt 1 ]; then
    echo "Missing parameter"
    help
fi

case "$1" in
    -f)
        if [ $# -lt 2 ]; then
            echo "Missing parameter"
            help
        fi
        
        if [ -f $2 ]; then 
            cat $2 >> etc-vimrc
            cat $2 >> ideavimrc
            cat $2 >> vimrc
        fi
        ;;
    -i)
        echo "Press Enter to quit"
        while : 
        do
            read line
            if [ -z "$line" ]; then break; fi 
            echo "$line" >> etc-vimrc
            echo "$line" >> ideavimrc
            echo "$line" >> vimrc
        done
        ;;
    *)
        help
        ;;
esac

echo "add done"

# reload 
./reload-settings.sh
