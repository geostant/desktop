# Building the container
`docker build -t desktop:latest .`

# Run as normal browser:
`docker run -d -P desktop:latest`

# Run with TOR support
`docker run -d -P -e TOR=True desktop:latest`

# Access
`http://<HOST_IP>:<PORT>/vnc_auto.html?autoconnect=1&autoscale=1`

# Additional variables
You can pass $LANGUAGES with the language codes (i.e. en,il,ru,zh-CN) to enable input languages in your system

### The included noVNC repo has been cloned from : https://github.com/novnc/noVNC
