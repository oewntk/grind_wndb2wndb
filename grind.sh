#!/bin/bash

IN="$1"
if [ -z "$1" ]; then
	IN=wndb
fi
echo "XML:  ${IN}" 1>&2;

IN2="$2"
if [ -z "$2" ]; then
	IN2=wndb2
fi
echo "XML2: ${IN2}" 1>&2;

OUTDIR="$3"
if [ -z "$3" ]; then
	OUTDIR=wndb_out
fi
mkdir -p "${OUTDIR}"
echo "DIR:   "${OUTDIR}"" 1>&2;

java -ea -jar oewn-grind-wndb2wndb.jar "${IN}" "${IN2}" "${OUTDIR}"
