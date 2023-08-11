docker run -it -p 8888:8888 --gpus 'all,"capabilities=compute,graphics,display,utility,video"' --ipc=host --ulimit memlock=-1 --ulimit stack=67108864 -v .:/app -v ~/.cache:/root/.cache clip-container /usr/local/bin/jupyter lab --allow-root --ip=* --port=8888 --no-browser --NotebookApp.token='' --NotebookApp.allow_origin='*' --notebook-dir=/app