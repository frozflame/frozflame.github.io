#!/usr/bin/env bash

# absolute path
# http://stackoverflow.com/questions/5265702/how-to-get-full-path-of-a-file
function ap () {
    readlink -f ${1:-.}
}

alias rp=ap


# sc = shortcut
function sc {
    case $1 in
        w)
            cd /data/www
            ;;
        l)
            cd /var/log
            ;;
        a)
            cd /etc/apache2
            ;;
        aa)
            cd /etc/apache2/sites-available
            ;;
        ae)
            cd /etc/apache2/sites-enabled
            ;;
        s|ssh)
            cd ~/.ssh/
            ;;
        n)
            cd /etc/nginx
            ;;
        na)
            cd /etc/nginx/sites-available
            ;;
        ne)
            cd /etc/nginx/sites-enabled
            ;;
        ns)
            cd /etc/nginx/servers
            ;;
        nl)
            cd /var/log/nginx/
            ;;
        su)
            cd /etc/supervisor/conf.d
            ;;
    esac
}
