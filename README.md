# dotfiles

## Running locally:

Set the folder as `$HOME/dotfiles`<br />
Don't forget to add your ssh keys into `$HOME/dotfiles/ssh` and your aws config and credentials in `$HOME/dotfiles/aws` replacing the dummy ones there<br /><br />
Then set `chmod 755` to `start.sh` script and run it

## Running the script remotely:

You can run `install` and `config` remotely, using `curl` this way:

```
curl https://raw.githubusercontent.com/angelcustodio/dotfiles/master/install.sh | bash
curl https://raw.githubusercontent.com/angelcustodio/dotfiles/master/config.sh | bash
```
