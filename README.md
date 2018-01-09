# Platform Branch Tester

This project offers an easy way to test a branch of the platform project. On
startup the container clones the platform project from GitHub and switches to
the specified branch. The platform is then run in production mode (like in deployment)
on [http://localhost:3000](http://localhost:3000) and will use the microservices
on `experimental.slidewiki.org`.

## Running a branch

`./run_branch <branch name>`

(`./run_branch.sh <branch name>` for Mac OS X terminal)


## Stopping the container

`./stop_container`

(`./stop_container.sh` for Mac OS X terminal)

This will also remove the container.
