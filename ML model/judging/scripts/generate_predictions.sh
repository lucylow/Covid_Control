#!/usr/bin/env bash

# This is a wrapper script for inference (generating predictions). Ultimately it runs the local predict.py module
# which is expected to exist. See prediction_module below.

# It is expected that cron will run this script on a schedule.
# See generate_predictions_local.py for more information
#
# This script assumes the repository has been downloaded locally.
# The predict.py API script is then run.

# See https://www.gnu.org/software/bash/manual/html_node/The-Set-Builtin.html for what these do
set -o errexit
set -o errtrace
set -o nounset
set -o pipefail
set -o xtrace

echo "Running main script..."

repo_dir="$1"

# Locations of tasks and predict.py module
predictions_file="$repo_dir/tasks/tasks.csv"
generate_predictions_wrapper="$repo_dir/judging/generate_predictions_local.py"
prediction_module="$HOME/work/predict.py"

# Run script
# Need to set up these env vars as cron has a restricted PATH by default
export PATH=/usr/local/bin/:$PATH
export PYTHONPATH=/usr/local/lib/python3.7/site-packages
which python
which pip
python --version
pip --version
# TODO: This next line is probably not needed for the sandbox since pandas is already present
pip install pandas==1.1.4
python "$generate_predictions_wrapper" \
  --requested-predictions-file "$predictions_file" \
  --prediction-module "$prediction_module"