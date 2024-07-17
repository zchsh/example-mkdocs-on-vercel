# MkDocs on Vercel

This is a demo documentation site, running [mkdocs](https://www.mkdocs.org/). You can preview it at:

- <https://example-mkdocs-on-vercel.vercel.app/>

## Intent

This project is intended to be a quick way to get set up with public or internal-facing documentation, without having to fuss about the framework being used, and with minimal customization.

It assumes that what most people want in a documentation site is to be able to author GitHub-flavor markdown in their editor, in a simple file tree, and have that content deployed automatically from a version-controlled repository. It also assumes that those working on the documentation site want to commit most of their time towards writing documentation, and as little time as possible towards setting up and customizing the look and feel of the documentation site.

## How to edit content

Note that you may not have to run the site locally to edit and preview content effectively.

Since the intent here is to support standard markdown features with a few common extensions, content can be edited and previewed with a good degree of accuracy using a variety of tools. You may prefer to use your text editor's built-in markdown preview tools, or to even use a separate markdown editing application pointed at the `docs` directory, rather than running `mkdocs` locally.

## Local development

This project uses a Python framework called [mkdocs](https://www.mkdocs.org/).

If you don't yet have Python installed on your machine, you can try running `./install-python-with-rye.sh`, which is intended as a quick way to get set up with Python, using [Rye](https://rye.astral.sh).

Once you Python installed, then from the root of this repository, you can run `./dev.sh`. The `dev.sh` script sets up a virtual environment with `pyenv`, ensures dependencies are installed, and then runs `python -m mkdocs serve`.

The `dev.sh` command should start the development server on <http://localhost:8000/>.

## Deploying to Vercel

This project has a `build.sh` script that is intended to run in Vercel build contexts.

This allows the site to take advantage of Vercel's continuous deployment features, removing the need to commit the static site build in a pre-commit hook or through other automation such as GitHub Actions.

In most cases, it should be relatively straightforward to deploy this site to Vercel:

- ✨ From the Vercel dashboard, create a new project, and use this repository as the source
- 👽 Select `Other` framework, but keep all other settings their defaults
- 🕺 Deploy!

Note that this project has a `package.json`, even though this is _not_ a Node project. This has been done for the sole purpose of making deployment to Vercel a little more convenient, since Vercel's default settings look for an `npm run build` script defined in `package.json`. Since we've defined such a script, the project can be deployed with default settings.

> **Note**: the `build.sh` script relies on the presence of `python3` already being available in Vercel build contexts. If that ever changes, maybe it'd make sense to explore installing Python using [Rye](https://rye.astral.sh) in the build script, which would have the added benefit of creating more parity between local development and build contexts.
