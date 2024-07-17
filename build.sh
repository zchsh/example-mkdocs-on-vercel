#!/bin/bash

# Note: This build script is intended to be run in Vercel build contexts, and
# relies on `python3` and `pip3` already being available in the environment.

# Check for dependencies, so we can error out early if they're missing
echo "🕵️ Checking for python3 executable..."
python3 --version

# Create a virtual environment, and activate it
echo "🏝️ Setting up virtual environment..."
python3 -m venv .venv
source .venv/bin/activate

# Ensure pip is up to date
echo "🔧 Updating pip..."
pip3 install --upgrade pip

# Install python dependencies
echo "🔧 Installing the dependencies..."
pip3 install -r requirements.txt

# Check for mkdocs, just in case
echo "🕵️ Checking for mkdocs..."
python3 -m mkdocs --version

# Build the project with mkdocs
echo "🏗️ Building the site with mkdocs..."
python3 -m mkdocs build -d public
