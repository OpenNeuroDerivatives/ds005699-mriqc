#!/bin/bash
#
# if setup went wrong, delete everything

[[ "$(read -e -p 'Are you sure you want to delete everything? [yes_sure!/NO]> '; echo $REPLY)" == yes_sure! ]] && echo KILLALLNOW || exit

# delete wrong input & output RIA stores + aliases
rm -rf /p/project1/icei-hbp-00000000004/ria-qcworkflow/inputstore/2e5/d0f05-ffdb-4a68-ac1c-0720731729a6
rm -f /p/project1/icei-hbp-00000000004/ria-qcworkflow/inputstore/alias/ds005699-mriqc
rm -rf https://hub.trr379.de/f.hoffstaedter/ds005699-mriqc
rm -f /p/project1/icei-hbp-00000000004/ria-qcworkflow/alias/ds005699-mriqc

# remove faulty dataset 
cd ..
datalad drop --what datasets --reckless kill -r -d ds005699-mriqc
