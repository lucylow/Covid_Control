#!/usr/bin/env bash

# Landing pad for the schedule job. Does nothing but launch bootstrap for predictions *and capture logging*

# See https://www.gnu.org/software/bash/manual/html_node/The-Set-Builtin.html for what these do
set -o errexit
set -o errtrace
set -o nounset
set -o pipefail
set -o xtrace

# Create logs dir if necessary
logs_dir=$HOME/work/predictions/logs
mkdir -p "$logs_dir"

# Set up log file path
log_file_name=predict_$(date +"%Y_%m_%d_%H%M").txt
log_file_path=$logs_dir/$log_file_name

# Launch bootstrap
echo "Running predictions generator bootstrap..." &>> "$log_file_path"
$HOME/work/bootstrap.sh &>> "$log_file_path"