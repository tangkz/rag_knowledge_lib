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

# Update code from upstream

To keep your forked repository `rag_knowledge_lib` updated with the upstream repository, follow these steps:

1. **Add the upstream repository**:
   Add the original repository as a remote named `upstream` for the first time.

   ```bash
   git remote add upstream git@github.com:infiniflow/ragflow.git
   ```

2. **Fetch the latest changes from the upstream repository**:
   Fetch the branches and their respective commits from the upstream repository.

   ```bash
   git fetch upstream
   ```

3. **Merge the changes into your local branch**:
   Merge the changes from the upstream branch (e.g., `main`) into your local branch (e.g., `main`).

   ```bash
   git checkout main # no need to checkout if you are already on the main branch
   git merge upstream/main
   ```

4. **Resolve any conflicts**:
   If there are any merge conflicts, resolve them manually, then commit the changes.

5. **Push the updated branch to your forked repository**:
   Push the merged changes to your forked repository on GitHub.

   ```bash
   git push 
   git push origin main # if you are on a different branch
   ```

By following these steps, you can keep your forked repository `rag_knowledge_lib` up-to-date with the original repository.