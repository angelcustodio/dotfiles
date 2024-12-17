# dotfiles

What you'll find here is my way of configuring macOS to work. As a developer, I don't want to be clicking into dozens of config panes, I prefer to automate as much as I can so, this is why I created this set of scripts that will, not only move some basic stuff but will also configure macOS with my own _flavor_.<br /><br />

Feel free to clone the repo and modify it in your way :)

## Running locally:

Set the folder as `$HOME/dotfiles`<br /><br />
**Don't forget to**:
- Add your ssh keys in `$HOME/dotfiles/ssh`
- Add your aws config and credentials in `$HOME/dotfiles/aws`
- Set `chmod 755` to `start.sh` script and run it

## Running the script remotely:

You can run `install` and `config` remotely, using `curl` this way:

```
curl https://raw.githubusercontent.com/angelcustodio/dotfiles/master/install.sh | bash
curl https://raw.githubusercontent.com/angelcustodio/dotfiles/master/config.sh | bash
```

## Help references

Here: `open ~/Library/Preferences/.GlobalPreferences.plist`