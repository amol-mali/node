# Minimal Node.js Hello World example

This repo contains a minimal application written in Node. 

## Run locally

```bash
npm install
npm start
```

## Run in a container

```bash
docker build -t node:latest .
docker run -it -p 8080:8080 --name node node:latest
```
