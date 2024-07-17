#!/bin/bash

#
# WHAT'S THIS SCRIPT FOR?
#
# This script is intended as a quick starting point for setting up Python
# and the dependencies needed to run the internal docs project locally.
#
# The end point we're aiming to get to with this script is:
# - The `python` and `pip` executables should both be available
# - There should be a specific Python virtual environment setup for this app
# - The `mkdocs` package and other packages defined in `requirements.txt`
#   should be installed in that virtual environment
#
# If you already have this setup, or are working with an alternate setup,
# you may need to take a different approach to setting up your environment.
# Once you have `python` available and `mkdocs` and other dependencies
# installed, then from the root of this project, you can run
# `python -m mkdocs serve`.

#
# WILL THIS WORK ON MY MACHINE?
#
# Maybe. This script is unlikely to be perfect for all setups. It assumes you're
# macOS, and that you don't yet have Python set up, and that you want to use
# Rye to install and manage Python.

# Install Rye, skipping prompts with RYE_INSTALL_OPTION
curl -sSf https://rye.astral.sh/get | RYE_INSTALL_OPTION="--yes" bash

# Source the Rye environment so the Python executable is availble
source "$HOME/.rye/env"
