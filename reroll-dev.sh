#!/bin/sh

export http_proxy=http://localhost:3128/
export ftp_proxy=http://localhost:3128/

./os2dagsorden_build.py -D -m profile -l os2dagsorden-`date +%Y%m%d%H%M`
