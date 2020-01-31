# Install Docker Compose

> Get the source
```bash
sudo curl -L "https://github.com/docker/compose/releases/download/1.25.3/docker-compose-$(uname -s)-$(uname -m)" -o $HOME/bin/docker-compose
```

> Set the rights
```bash
sudo chmod +x $HOME/bin/docker-compose
```

# Application example

- testapp.py
  Contains an example application for this project.
- requirements.txt
  Dependencies for this test project.
- Dockerfile
  This files defines the docker image that shall be build including the dependencies.
  Python included.
- docker-compose.yml
  Defines the services

# Run the application

> Start the containers and install the requirements
```
docker-compose up
```

> Check in the browser
```
http://0.0.0.0:5000/
```

# Some more Docker commands

> See what is currently running
```
docker-compose ps
```

> Start the services in the background with -d flag
```
docker-compose up -d
```

> Stop service when started in the background
```
docker-compose stop
```

> Removing also the data from the containers
```
docker-compose down --volumes
```

