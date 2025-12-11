```bash
# setup docker if needed
sudo dnf install docker docker-buildx && \
sudo usermod -aG docker $USER && \
sudo systemctl enable --now docker.socket
sudo reboot

# after reboot:
docker buildx build --tag repro --file Containerfile . --load
docker run \
  --rm \
  --interactive \
  --tty \
  --name=repro \
  repro
```