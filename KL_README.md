# Building commands

## Building docker images

### Only adding the frontend

```
docker build -t anywhere/rag_kl:dev .
```

### Bulding from the scratch

```bash
docker build -t anywhere/rag_kl2:dev -f Dockerfile.scratch .
```

## Hack into the docker container

```powershell
docker exec -it ragflow-server /bin/bash
```
