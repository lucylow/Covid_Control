#!/usr/bin/env bash

# As its name suggests, this is a bootstrap script. It is intended to be called by cron. Its sole purpose is to download
# the latest "tasks" git repository, then hand control over to generate_predictions.sh to generate the predictions.
# This is split into a separate script to give us flexibility in updating the main generate_predictions.sh script.

# See https://www.gnu.org/software/bash/manual/html_node/The-Set-Builtin.html for what these do
set -o errexit
set -o errtrace
set -o nounset
set -o pipefail
set -o xtrace

export TZ=":America/Los_Angeles"
echo "Running bootstrap at $(date)"

# Get latest from github as a zip file and extract it to user home directory

# Repo to download from
repo_name="covid-xprize-robotasks"

# Use this branch from Github
branch="main"

# Path to downloaded local repo
repo_dir="$HOME/$repo_name-$branch"

# Remove existing copy
rm -rf "$repo_dir"

# Get local copy of repo
archive_file="$HOME/$repo_name.tar.gz"
wget --quiet --output-document "$archive_file" https://github.com/leaf-ai/$repo_name/archive/$branch.tar.gz

# Unzip to destination directory
mkdir -p "$repo_dir" && \
  tar --overwrite --extract --directory "$HOME" --file "$archive_file" && \
  rm "$archive_file"

# Launch the main script
main_script="$repo_dir"/judging/scripts/generate_predictions.sh
chmod +x "$main_script"
$main_script "$repo_dir"