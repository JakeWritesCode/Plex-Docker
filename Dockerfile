FROM ubuntu

RUN echo "Server started!"

# Install factorio server
RUN echo "Settng up factorio server..."
# Move to tmp dir
WORKDIR "/tmp"

# Download wget
RUN  apt-get update \
  && apt-get install -y wget \
  && rm -rf /var/lib/apt/lists/* \


## Download jq
#RUN  apt-get update \
#  && apt-get install -y jq

# Download the factorio server
RUN wget https://dl.factorio.com/releases/factorio_headless_x64_1.1.53.tar.xz?secure=RaqSZpm5A-DwzsbJsh3-cA,1647110922

# Extract the factorio server into opt/factorio, create user, chown
#WORKDIR "/opt"
#RUN echo ls /tmp
#RUN tar -xJf /tmp/factorio_headless_x64_1.1.53.tar.xz
#RUN useradd factorio
#
## Add in the server settings file and replace creds.
#WORKDIR "/opt/factorio"
#RUN wget https://github.com/JakeWritesCode/Plex-Docker/blob/c4fb744000aedc4f919efcb8982b267909cc3997/factorio/server-settings.json
#RUN jq --arg token "$FACTORIO_PASSWORD_TOKEN" '.token = token' test.json|sponge server-settings.json
#
#RUN chown -R factorio:factorio /opt/factorio
#
#
#
#
#
