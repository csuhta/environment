My personal environment/dotfiles. Feel free to steal ideas.

#### Deploying

To deploy, you just need to run this command in the working directory:

    ./deploy

Existing dotfiles will be clobbered and replaced with a copy from the repo.

The deploy script expects there to be a `./deploy_local` script in the repo folder to
execute commands that do not belong to source control, like Git `user.name`. This is what's inside
my copy of `deploy_local`:

    #!/bin/bash
    git config --global user.name "Woah McTuggins"
    git config --global user.email "mctuggins@example.com"

`deploy_local` is gitignored for you.

#### OS X settings

You can also run

    ./osx

to run the script of OS X settings I like. This isn't part of `deploy` because it
will kill/restart/HUP a lot of OS X services.
