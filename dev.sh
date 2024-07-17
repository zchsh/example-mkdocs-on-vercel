# Check for the python executable, so if it's missing, the issue is clear
echo "🕵️ Checking for python executable..."
python --version

# Create a virtual environment, and activate it
echo "🏝️ Setting up virtual environment..."
python -m venv .venv
source .venv/bin/activate

# Check that the python executable, so if it's missing, the issue is clear
echo "🕵️ Checking python is being sourced fromn the virtual environment..."
which python

# Ensure pip is up to date
echo "🔧 Updating pip..."
pip install --upgrade pip

# Install python dependencies
echo "🔧 Installing dependencies..."
pip install -r requirements.txt

# Serve the project with mkdocs
echo "🍽️ Serving the site with mkdocs..."
python -m mkdocs serve
