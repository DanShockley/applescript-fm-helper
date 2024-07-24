#! /bin/sh
# make
#
# Make file for applescript-fm-helper
#
# 2016-08-16-dshockley


ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd $ROOT_DIR
git pull -q

. make.sh