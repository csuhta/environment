My personal environment/dotfiles. Feel free to steal ideas.

#### Deploying

To deploy, you just need to run this command in the working directory:

    ./deploy

Existing dotfiles will be clobbered and replaced with a copy from the repo.

#### OS X settings

You can also run

    ./osx

to run the script of OS X settings I like. This isn't part of `deploy` because it
will kill/restart/HUP a lot of OS X services.
