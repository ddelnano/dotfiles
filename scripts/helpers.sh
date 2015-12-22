function ask_response() {

    while true; do

        read -p "$1 (y/n)" answer

        case $answer in
            [Yy] ) return 0;;
            [Nn] ) return 1;
        esac
    done
}
