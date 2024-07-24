#! /bin/sh
# make
#
# Make file for applescript-fm-helper.
#
# 
# 2016-08-16 ( dshockley ): created
# 2017-10-20 ( eshagdar ): run without UI interaction.


root_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
helper_path=$root_dir/main_helper.applescript


osascript "$helper_path" false
