FROM ubuntu
# Install Tools
RUN apt update && DEBIAN_FRONTEND="noninteractive" apt install -y \
software-properties-common \
git \
python3.8 \
python3.8-dev \
python3-pip \
python3-venv \
ssh \
sudo \
vim \
&& apt clean && apt autoremove -y && rm -rf /var/lib/apt/lists/*
# Set Environment Variables
ENV USER sjinxin
ENV HOME /home/$USER
# Create non root user and add user to sudo group
RUN useradd -m --uid 1000 -s /bin/bash $USER
RUN usermod -aG sudo $USER 
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
USER $USER
WORKDIR $HOME
# Create entrypoint script
COPY --chown=root:root entrypoint.sh /sbin/
#ENTRYPOINT ["/sbin/entrypoint.sh"]
