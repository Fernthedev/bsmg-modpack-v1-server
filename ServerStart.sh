#!/bin/bash

cd "$(dirname "$0")"
. ./settings.sh

# makes things easier if script needs debugging
if [ x$FTB_VERBOSE = xyes ]; then
    set -x
fi

# cleaner code
eula_false() {
    grep -q 'eula=false' eula.txt
    return $?
}

# Checks if the server is already running by checking if the port is open
check_server_port() {
	 nc -z -v -w5 localhost ${MC_PORT} &> /dev/null
	 if [ "$?" -eq 0 ]; then
		echo Sever already running,stopping
		sleep 2s
		exit
	fi
}

start_server() {
	check_server_port

    "$JAVACMD" ${JVM_ARGUMENTS}
}

# check if there is eula.txt and if it has correct content
if [ $EULA_REQUIRED = true ] ; then

    # inform user if eula.txt not found
    if [ ! -f eula.txt ]; then
       >&2 echo "Missing eula.txt. Startup will fail and eula.txt will be created"
       >&2 echo "Make sure to read eula.txt before playing!"
    fi

    if [ -f eula.txt ] && eula_false ; then
        >&2 echo "Make sure to read eula.txt before playing!"
        exit -1
    fi
fi

# run install script if MC server or launchwrapper s missing
if [ ! -f minecraft_server.1.7.10.jar ]; then
    echo "Missing required jars. Running install script!"
    sh ./FTBInstall.sh
fi

echo "Starting server"
start_server

