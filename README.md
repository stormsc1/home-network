On a fresh Ubuntu Server 24 installation, if you choose to install Docker via Snap during the setup process, you may encounter permission issues. To resolve these, follow the steps below to fix the Snap Docker permissions:
```bash
# Connect the docker:home plug as it's not connected by default
sudo snap connect docker:home

# Create and join the docker group
sudo groupadd --system docker
sudo adduser $USER docker
newgrp docker # or log out and back in

# Disable and re-enable the docker snap if you added the group while it was running.
sudo snap disable docker
sudo snap enable docker
```


start: `docker compose up -d`
stop: `docker compose down`