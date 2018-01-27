#!/usr/bin/env bash

tarAll () {
#    local own_node_name="${HOSTNAME::-12}" # remove the .grid5000.fr part of the name
    local own_node_name="${HOSTNAME}" # remove the .grid5000.fr part of the name
    local datafolder="benchLogs/Staleness"
    local logfolder="/benchLogs/Log"
    local result_f_name="node-${own_node_name}-$1-$2-StalenessResults.tar"
    cd
    cd /tmp/antidote
    command="tar czf ../${result_f_name} ${datafolder} ${logfolder}"
    echo "[NODE] $own_node_name : running "$command
    $command
}


tarAll "$@"
