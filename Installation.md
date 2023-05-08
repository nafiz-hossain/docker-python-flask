## Updating and Installing Dependencies for Docker

To install Docker on Ubuntu, you'll need to update and install some dependencies first. Here are the commands to do that:

sudo apt-get update
sudo apt-get install ca-certificates curl gnupg lsb-release


## Setting up the Docker Repository

After installing the necessary dependencies, you need to set up the Docker repository. Here are the commands to do that:

sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null



## Installing the Docker Engine

Now that the Docker repository is set up, you can install the Docker Engine. Here are the commands to do that:


sudo apt update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin


## Installing Docker Desktop

To install Docker Desktop, you must download the .deb package first from the following document: [Install Docker Desktop](https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository). Once downloaded, run the following command:

sudo apt-get install ./docker-desktop-<version>-<arch>.deb


Note: Replace `<version>` and `<arch>` with the actual version and architecture of the package you downloaded.
