#!/usr/bin/env bash

db_hostname='clms.auroradb.prd-aws.charter.net'

if [[ $# > 0 ]]; then
	db_hostname=$1
fi

mysqldump --single-transaction --quick -h ${db_hostname} -u clmsmaster -p clms | bzip2 > clms-prod-$(date +%F).sql.bz2

