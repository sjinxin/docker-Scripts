FROM ubuntu
# Install Tools
RUN apt update
RUN DEBIAN_FRONTEND="noninteractive" apt install -y software-properties-common 
RUN apt install -y python3.8 python3-pip python3.8-dev
RUN apt install -y vim \
git \
ssh
# Set Environment Variables
ENV USER sjinxin
ENV HOME /home/$USER
# Create non root user
RUN useradd -m --uid 1000 -s /bin/bash $USER
# Add user to sudo group
RUN apt-get install sudo -y
RUN usermod -aG sudo $USER
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
USER $USER
WORKDIR $HOME
# Create entrypoint script
COPY --chown=root:root entrypoint.sh /sbin/
#ENTRYPOINT ["/sbin/entrypoint.sh"]
