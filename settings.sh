export MCVER="1.7.10"
export JARFILE="forge-1.7.10-10.13.4.1614-1.7.10-universal.jar"
export JAVACMD="java"
export MC_PORT="25565"

# By default, this uses Aikar's flags as of 7/16/2020. Change or remove them if needed
export RAM_USAGE="2G"
export JVM_ARGUMENTS="-Xms${RAM_USAGE} -Xmx${RAM_USAGE} -XX:PermSize=256m -d64 -XX:+UseParNewGC -XX:+CMSIncrementalPacing -XX:+CMSClassUnloadingEnabled -XX:ParallelGCThreads=2 -XX:MinHeapFreeRatio=5 -XX:MaxHeapFreeRatio=10 -jar ${JARFILE} nogui"

export EULA_REQUIRED=true
