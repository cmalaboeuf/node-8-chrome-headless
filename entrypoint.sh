
#!/bin/bash

source /root/.bashrc

yarn --version

Xvfb :99 -ac -screen 0 1280x720x16 -nolisten tcp &

exec "$@"
