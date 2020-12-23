FROM python:3.7-stretch

ENV HOME_DIR=/home/xprize

# Create an xprize user
RUN useradd -ms /bin/bash -d ${HOME_DIR} -u 1000 xprize \
    && echo xprize:pw | chpasswd

WORKDIR $HOME_DIR

# install cron
RUN apt-get update -yqq && \
    apt-get -yqq --no-install-recommends --no-install-suggests install cron python3-pip

# Create the log file to be able to run tail
RUN touch /tmp/cron.log && chown xprize:xprize /tmp/cron.log

# /tasks is mounted at run time. Set up cron job, run cron, then drop down to unprivileged user 'xprize'
CMD $HOME_DIR/tasks/entrypoint.sh && cron && su --login xprize
