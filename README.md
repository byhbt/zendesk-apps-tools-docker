# Zendesk apps tools in Docker

Dockerize Zendesl apps tools (zaf)

### Components:

* Alpine Ruby 2.3


### How to use it
```bash
thanh@co:~/dist$ docker run -p 4567:4567 -v ${PWD}:/data -ti zendesk-app-tools zat 
Commands:
  zat clean             # Remove app packages in temp folder
  zat create            # Create and install app on your account
  zat help [COMMAND]    # Describe available commands or one specific command
  zat new               # Generate a new app
  zat package           # Package your app
  zat server            # Run a http server to serve the local app
  zat theme SUBCOMMAND  # Development tools for Theming Center (Beta)
  zat update            # Update app on the server
  zat validate          # Validate your app
  zat version, -v       # Print the version
```

### Screenshot(s):
(update later)
