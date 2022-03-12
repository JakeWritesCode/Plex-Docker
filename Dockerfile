FROM ubuntu

RUN echo "Server started!"

# Install factorio server
RUN echo "Settng up factorio server..."
# Move to tmp dir
WORKDIR "/tmp"
# Download wget
RUN  apt-get update \
  && apt-get install -y wget \
  && rm -rf /var/lib/apt/lists/*

# Download the factorio server
RUN wget https://dl.factorio.com/releases/factorio_headless_x64_1.1.53.tar.xz?secure=RaqSZpm5A-DwzsbJsh3-cA,1647110922

# Extract the factorio server into opt/factorio, create user, chown
WORKDIR "/opt"
RUN sudo tar -xJf /tmp/factorio_headless_x64_1.1.53.tar.xz
RUN useradd factorio

# Add in the server settings file and replace creds.
WORKDIR "/opt/factorio"
RUN wget

RUN chown -R factorio:factorio /opt/factorio





