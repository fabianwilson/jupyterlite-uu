# Galv JupyterLite

[![lite-badge](https://jupyterlite.rtfd.io/en/latest/_static/badge.svg)](https://galv-team.github.io/jupyterlite/)

JupyterLite is a JupyterLab distribution that runs entirely in the browser built on top of Pyodide, Xeus, and Lumino.

The Galv instance of JupyterLite is a fork of the JupyterLite project with example 
notebooks illustrating some common battery science workflows.

## ✨ Try it in your browser ✨

➡️ **https://galv-team.github.io/jupyterlite/**

JupyterLite is currently in an early development stage, so for real scientific work you should use a more
stable Python environment.

## Example notebooks

### Downloading data and metadata

## Development

The repository includes a Dockerfile so that the JupyterLite build output can be inspected.

To build the docker image use `docker build -t galv-jupyter .`.

When you run the image, bind the local directory to `/jupyterlite` in the container.
On Linux, you can do this with
`docker run -v $(pwd):/jupyterlite galv-jupyter jupyter lite build --contents content --output-dir .dist`.

On Windows, you can do this with
`docker run -v .:/jupyterlite galv-jupyter jupyter lite build --contents content --output-dir .dist`.

You'll find the output in the `.dist` directory. 
This will be hidden on Linux systems, so you may need to use `ls -a` to see it.