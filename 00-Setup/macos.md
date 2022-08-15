*This setup is inspired by [Le Wagon](https://github.com/lewagon/setup/blob/master/windows.md) setup.*

# Setup Instructions
The content below will guide you through the configuration of your machine, which is needed for the *TDD Discovery*.
**Please read carefully.**

:crown: If your computer is up to date and you already have a dev environment on it (i.e. terminal, code editor and git CLI), congrats, it will save you a lot of time. You can jump straight to the Ruby configuration.

## GitHub

You will need a GitHub account to go through the TDD Discovery. If you don't already have one, [go create it](https://github.com/join)!

:point_right: Make sure your profile looks like it's yours. **[Upload a picture](https://github.com/settings/profile)** and put your name correctly (do it **now**, not later. Selfies are exceptionnaly authorized in class for that particular step :camera:).

## Command Line Tools

Open a new terminal and run following command:

```bash
xcode-select --install
```

If you receive the following message, you can just skip this step and go to next step.

```bash
# command line tools are already installed, use "Software Update" to install updates
```

Otherwise, it will open a window asking you if you want to install some software: click on "Install" and wait.


:white_check_mark: If you see the message "The software was installed" then all good :+1:

:rotating_light: If the command `xcode-select --install` fails, then try again: sometimes, Apple servers are just overloaded.

:rotating_light: If you see the message "Xcode is not currently available from the Software Update server", you need to update the software update catalog:

```bash
sudo softwareupdate --clear-catalog
```

Once this is done, you can try to install again. :arrows_counterclockwise:


## Homebrew

In order to manage packages, we will need [Homebrew](http://brew.sh/): it's a software used to install other software from the command line.

- Open a terminal and run:

    ```bash
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    ```

    This will ask for your confirmation (hit `Enter`) and your **macOS user account password** (the one you use to [log in](https://support.apple.com/en-gb/HT202860) when you reboot your Mac).

    > :no_mouth: When you type your password, nothing will show up on the screen, **that's normal**. This is a security feature to mask not only your password as a whole but also its length. Just type your password and when you're done, press `Enter`.

    :warning: If you see [this warning](https://github.com/lewagon/setup/blob/master/images/macos_homebrew_warning.png), run the two commands in the `Next steps` section to add Homebrew to your PATH:


    ```bash
    # ⚠️ Only execute these commands if you saw this warning ☝
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
    ```

    If you already have Homebrew installed, it will tell you so. You can go ahead. :point_down:

- Then install some useful software:

    ```bash
    brew update
    ```

    If you get a `/usr/local must be writable` error, just run this:

    ```bash
    sudo chown -R $USER:admin /usr/local
    brew update
    ```

- Proceed running the following in the terminal (you can copy / paste all the lines at once).

    ```bash
    brew upgrade git || brew install git
    brew upgrade gh || brew install gh
    brew upgrade wget || brew install wget
    brew upgrade imagemagick || brew install imagemagick
    brew upgrade jq || brew install jq
    brew upgrade openssl || brew install openssl
    ```

## Code Editor

If you have a favorite code editor that you are accostumated to used, perfect. You just need to make sure it's connected to Ubuntu. You are probably going to go through the documentation for that.
You can Google `Connect [your code editor name] to Ubuntu on Windows` to find some helpful links.

If you don't have a favorite code editor, no worries : you'll make good friend with **[Visual Studio Code](https://code.visualstudio.com)**.

### Installation


We'll install VS Code using Homebrew.
- In your terminal, run:

    ```bash
    brew install --cask visual-studio-code
    ```

- Then, you can launch VS Code by simply running the following command:

    ```bash
    code
    ```

:white_check_mark: If a VS Code window has just opened, you're good to go :+1:

:rotating_light: Otherwise, refer to your best buddy: your *codemate*, one of your classmates or simply Google.

## VS Code Extensions

The great thing with VS Code is that you can install plenty of extensions to supercharge your code editor. Here are some useful VS Code extensions.

- [VSCode Great Icons](https://marketplace.visualstudio.com/items?itemName=emmanuelbeziat.vscode-great-icons)
- [Ruby](https://marketplace.visualstudio.com/items?itemName=rebornix.Ruby)
- [Paste and Indent](https://marketplace.visualstudio.com/items?itemName=Rubymaniac.vscode-paste-and-indent)

To install them, copy-paste the following commands in your terminal:

```bash
code --install-extension emmanuelbeziat.vscode-great-icons
code --install-extension github.github-vscode-theme
code --install-extension rebornix.ruby
code --install-extension Rubymaniac.vscode-paste-and-indent
code --install-extension alexcvzz.vscode-sqlite
```

## macOS Terminal Theme

You can customize the visual theme of your Terminal:
- Launch a terminal
- Click on `Terminal > Preferences`
- In the *Window* tab, set your **Window Size** to Columns: `200` and Rows: `50`.
- I also higlhy recommend you to set the "Pro" theme as default profile. This will turn the background dark and make it definitely easier for your eyes (take care of them). :eyes:

## Oh-my-zsh

Let's install the `zsh` plugin [Oh My Zsh](https://ohmyz.sh/).

- In your terminal, run:

    ```bash
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    ```

- If asked *"Do you want to change your default shell to zsh?"*, press `Y`


:white_check_mark: If it does, you can continue :+1:

:rotating_light: Otherwise, refer to your best buddy: your *codemate*, one of your classmates or simply Google.

## GitHub CLI

CLI is the acronym of [Command-line Interface](https://en.wikipedia.org/wiki/Command-line_interface).

In this section, we will use [GitHub CLI](https://cli.github.com/) to interact with GitHub directly from the terminal.

From the previous commands, GitHub CLI should already be installed on your computer. We'll use it to interact with GitHub directly from the terminal.

- First, in order to **login**, copy-paste the following command in your terminal:

    :warning: **DO NOT edit the `email`**

    ```bash
    gh auth login -s 'user:email' -w
    ```

    `gh` will ask you few questions:

    - `What is your preferred protocol for Git operations?`
      With the arrows, choose `SSH` and press `Enter`. SSH is a protocol to log in using SSH keys instead of the well known username/password pair.

    - `Generate a new SSH key to add to your GitHub account?` Press `Enter` to ask `gh` to generate the SSH keys for you.

      If you already have SSH keys, you will see instead `Upload your SSH public key to your GitHub account?` With the arrows, select your public key file path and press `Enter`.

    - `Enter a passphrase for your new SSH key (Optional)`. Type something you want and that you'll remember. It's a password to protect your private key stored on your hard drive. Then press `Enter`.

      > :no_mouth: When you type your password, nothing will show up on the screen, **that's normal**. This is a security feature to mask not only your password as a whole but also its length. Just type your password and when you're done, press `Enter`.

- You will then get the following output:

    ```bash
    ! First copy your one-time code: 0EF9-D015
    - Press Enter to open github.com in your browser...
    ```

- Select and copy the code (`0EF9-D015` in the example), then press `Enter`.

    Your browser will open and ask you to authorize GitHub CLI to use your GitHub account. Accept and wait a bit.

- Come back to the terminal, press `Enter` again, and that's it.

- To check that you are properly connected, type:

    ```bash
    gh auth status
    ```

:white_check_mark: If you get `Logged in to github.com as <YOUR USERNAME> `, then all good :+1:

:x: If not, refer to your best buddy: your *codemate*, one of your classmates or simply Google.

## Standard configuration

In order to have a file configuration identical for everyone, we'll use a template. More specifically, the [Dotfiles](https://github.com/lewagon/dotfiles) template from Le Wagon. Thus, you will fork Le Wagon repository.

<details>
  <summary>Forking? What's that, I'm not hungry.</summary>

  Forking means that you will make a copy of an original repository. This copy will be stored in your wery own GitHub account and you will be able to modify it at will.
  In our case, forking Le Wagon's Dotfiles template means you'll have a new $GITHUB_USERNAME/dotfiles repo on your GitHub account, identical to the original Le Wagon one. We'll use it to run some config.
</details>


Open your terminal and run the following commands:

```bash
export GITHUB_USERNAME=`gh api user | jq -r '.login'`
echo $GITHUB_USERNAME
```

:white_check_mark: You should see your GitHub username printed.

:rotating_light: If not, **stop here**. There may be a problem with the previous step (`gh auth`). Try to redo it.


**Now, it's time to fork the repo and clone it on your computer:**

```bash
mkdir -p ~/code/$GITHUB_USERNAME && cd $_
gh repo fork lewagon/dotfiles --clone
```

### Dotfiles installer

Run the `dotfiles` installer:

```bash
cd ~/code/$GITHUB_USERNAME/dotfiles
zsh install.sh
```

Check the emails registered with your GitHub Account. You'll need to pick one at the next step:

```bash
gh api user/emails | jq -r '.[].email'
```

:white_check_mark: If you see the list of your registered emails, you can proceed :+1:

:rotating_light: If not, please [reauthenticate to GitHub](https://github.com/lewagon/setup/blob/master/windows.md#github-cli) before running this command :point_up: again.

## Ruby & rbenv

There we are! We are finally going to install the language we are interested in for this TDD Discovery: **Ruby**. :heart_eyes:

### rbenv

First, you will install [`rbenv`](https://github.com/sstephenson/rbenv), a software to install and manage `ruby` environments.

- Beforehand, we need to clean up any previous Ruby installation you might have:

    ```bash
    rvm implode && sudo rm -rf ~/.rvm
    # If you got "zsh: command not found: rvm", carry on. It means `rvm` is not
    # on your computer, that's what we want!

    sudo rm -rf $HOME/.rbenv /usr/local/rbenv /opt/rbenv /usr/local/opt/rbenv
    ```

    :bulb: You may have to type your password.

    > :no_mouth: When you type your password, nothing will show up on the screen, **that's normal**. This is a security feature to mask not only your password as a whole but also its length. Just type your password and when you're done, press `Enter`.

- Then in the terminal, run:

    ```bash
    brew uninstall --force rbenv ruby-build
    exec zsh
    ```

    ```bash
    brew install rbenv
    ```

### Ruby

Now, you are ready to install the latest [ruby](https://www.ruby-lang.org/en/) version and set it as the default version.

Run this command, it will **take a while (5-10 minutes)**

```bash
rbenv install 3.1.2
```

Once the ruby installation is done, run this command to tell the system
to use the 3.1.2 version by default.

```bash
rbenv global 3.1.2
```

**Reset** your terminal and check your Ruby version:

```bash
exec zsh
```

Then run:

```bash
ruby -v
```

:white_check_mark: If you see something starting with `ruby 3.1.2p` then you can proceed. :+1:


### Installing some gems

In the ruby world, we call external libraries `gems`: they are pieces of ruby code that you can download and execute on your computer. Let's install some!

In your terminal, copy-paste the following command:

```bash
gem install colored faker http pry-byebug rake rails rest-client rspec rubocop-performance sqlite3
```

:white_check_mark: If you get `xx gems installed`, it's all good :ok_hand:

:rotating_light: If you encounter the following error:

```bash
ERROR: While executing gem ... (TypeError)
incompatible marshal file format (can't be read)
format version 4.8 required; 60.33 given
```

Run the following command:
```bash
rm -rf ~/.gemrc
```

Rerun the command to install the gems.

:warning: **NEVER** install a gem with `sudo gem install`! Even if you stumble upon a Stackoverflow answer (or the terminal) telling you to do so.

## Make sure everything is OK.

Le Wagon created a cool script that ensures that every little piece of software specified above is correctly installed on your machine. We'll use it as a final check before departure. :rocket:

In you terminal, run the following command:

```bash
exec zsh
```

Then run:

```bash
curl -Ls https://raw.githubusercontent.com/lewagon/setup/master/check.rb > _.rb && ruby _.rb && rm _.rb || rm _.rb
```

:white_check_mark: If you get a green `Awesome! Your computer is now ready!`, then you're good :+1:

:rotating_light: If not, what does it says? You might have some hint about what to do to fix it.

## Setup complete!

Congratulations! You're now all set to start the TDD Discovery. :clap:
