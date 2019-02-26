FROM python:3.7.2

# create flaskgroup and flaskuser
RUN groupadd flaskgroup && useradd -m -g flaskgroup -s /bin/bash flaskuser

# create container
RUN mkdir -p /home/level

WORKDIR /home/level

# set the power
RUN chown -R flaskuser:flaskgroup /home

# point the user
USER flaskuser
