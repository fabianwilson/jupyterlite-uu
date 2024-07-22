FROM python:3.12

RUN mkdir /juptyerlite

WORKDIR /jupyterlite

COPY . .

RUN python -m pip install -r requirements.txt

# run with
# docker build -t galv-jupyter .
# docker run -v $(pwd):/jupyterlite galv-jupyter jupyter lite build --contents content --output-dir .dist

# On windows, replace the second command with
# docker run -v .:/jupyterlite galv-jupyter jupyter lite build --contents content --output-dir .dist
