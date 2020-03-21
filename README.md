# Chalice Serverless Boilerplate

> Boilerplate for Python Chalice

## Getting Started

To use this project, you will need to install:

- [Docker Compose](https://docs.docker.com/compose/)

## Local Development

This project has [VSCode Remote Containers](https://code.visualstudio.com/docs/remote/containers) enabled.
To develop locally, simply boot the remote container in VSCode and run the following command:

```
make start
```

Then open up [http://localhost:8000/tasks](http://localhost:8000/tasks) in your browser.

## Deploying

To deploy locally, use the following command in your remote container:

```
make deploy
```
