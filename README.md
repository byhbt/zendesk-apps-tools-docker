# Zendesk apps tools in Docker

Dockerize Zendesk apps tools (zaf)

### Components:

* Alpine Ruby 2.3

### Components:
* https://developer.zendesk.com/apps/docs/developer-guide/using_sdk

### Tutorials:
* https://blog.steve.ly/a-quickstart-guide-to-building-zendesk-apps

### How to execute zat?
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

### How to run zat server?
```Bash
docker run -p 4567:4567 -v ${PWD}:/data -ti zendesk-app-tools zat server --bind 0.0.0.0
```
Then go to https://subdomain.zendesk.com/agent/?zat=true (replace "subdomain" with your subdomain)

### Screenshot(s):
(update later)
