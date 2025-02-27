# HotWheels

Nothing interesting, just my collection of python wheels.


Here is a visualization if you are bored like me.
<p align="center">
  <img width="512" height="512" src="https://github.com/user-attachments/assets/c565510f-5271-44c3-aa2a-5811cbcf6ddc">
</p>

## Build Wheels
```bash
docker build -t hotwheels .
```

```
REPO_URL="https://github.com/ashawkey/diff-gaussian-rasterization.git"
docker run \
    --gpus all \
    --ipc=host \
    --ulimit memlock=-1 \
    --ulimit stack=67108864 \
    -v $(pwd)/build:/build \
    hotwheels $REPO_URL
```
