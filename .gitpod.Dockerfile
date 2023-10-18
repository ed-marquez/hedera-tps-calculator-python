FROM gitpod/workspace-full

USER gitpod

# Install Python and pip
RUN sudo apt-get update && sudo apt-get install -y python3 python3-pip

# Set Python 3 as the default
RUN sudo ln -s /usr/bin/python3 /usr/bin/python && \
    sudo ln -s /usr/bin/pip3 /usr/bin/pip

# Optionally, install any other dependencies or perform additional setup
RUN pip install requests