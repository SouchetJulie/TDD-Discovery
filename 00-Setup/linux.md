*This setup is inspired by [Le Wagon](https://github.com/lewagon/setup/blob/master/ubuntu.md) setup.*

# Setup Instructions for Linux
The content below will guide you through the configuration of your machine, which is needed for the *TDD Discovery*.
**Please read carefully.**

:crown: If your computer is up to date and you already have a dev environment on it (i.e. terminal, code editor and git CLI), congrats, it will save you a lot of time. You can jump straight to the Ruby configuration.

## GitHub

You will need a GitHub account to go through the TDD Discovery. If you don't already have one, [go create it](https://github.com/join)!

:point_right: Make sure your profile looks like it's yours. **[Upload a picture](https://github.com/settings/profile)** and put your name correctly (do it **now**, not later. Selfies are exceptionnaly authorized in class for that particular step :camera:).

## Code Editor

If you have a favorite code editor that you are accostumated to used, perfect. You just need to make sure it's connected to Ubuntu. You are probably going to go through the documentation for that.
You can Google `Connect [your code editor name] to Ubuntu on Windows` to find some helpful links.

If you don't have a favorite code editor, no worries : you'll make good friend with **[Visual Studio Code](https://code.visualstudio.com)**.

### Installation


We'll install VS Code using CLI.
- In your terminal, run:

    ```bash
    wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
    sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
    sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
    rm -f packages.microsoft.gpg
    sudo apt update
    sudo apt install -y code
    ```

    :bulb: You'll be asked to enter your password: type it in.

    > :no_mouth: When you type your password, nothing will show up on the screen, **that's normal**. This is a security feature to mask not only your password as a whole but also its length. Just type your password and when you're done, press `Enter`.

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

## Command line tools
*Extract from [Le Wagon](https://github.com/lewagon/setup/blob/master/ubuntu.md) setup*

### Zsh & Git

Instead of using the default `bash` [shell](https://en.wikipedia.org/wiki/Shell_(computing)), we will use `zsh`.

We will also use [`git`](https://git-scm.com/), a command line software used for version control.

Let's install them, along with other useful tools:
- Open an **Ubuntu terminal**
- Copy and paste the following commands:

    ```bash
    sudo apt update
    ```

    ```bash
    sudo apt install -y curl git imagemagick jq unzip vim zsh
    ```

These commands will ask for your password: type it in.

> :no_mouth: When you type your password, nothing will show up on the screen, **that's normal**. This is a security feature to mask not only your password as a whole but also its length. Just type your password and when you're done, press `Enter`.

### GitHub CLI installation

Now, let's install [GitHub official CLI](https://cli.github.com) (Command Line Interface). We'll use it to interact with your GitHub account via the command line.

In your terminal, copy-paste the following commands (type in your password if asked):

```bash
sudo apt remove -y gitsome # gh command can conflict with gitsome if already installed
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt update
sudo apt install -y gh
```

To check that `gh` has been successfully installed on your machine, you can run:

```bash
gh --version
```

:white_check_mark: If you see `gh version X.Y.Z (YYYY-MM-DD)`, you're good to go :+1:

:x: Otherwise, refer to your best buddy: your *codemate*, one of your classmates or simply Google.


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

- First in order to **login**, copy-paste the following command in your terminal:

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
  <summary>Forking? What is that, I'm not hungry.</summary>

  **Forking means that you will make a copy of an original repository.** This copy will be stored in your wery own GitHub account and you will be able to modify it at will.

  In our case, forking Le Wagon's Dotfiles template means you'll have a new `$GITHUB_USERNAME/dotfiles` repo on your GitHub account, identical to the original Le Wagon one. We'll use it to run some config.
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

:rotating_light: If not, please [reauthenticate to GitHub](https://github.com/lewagon/setup/blob/master/ubuntu.md#github-cli) before running this command :point_up: again.

## Disable SSH passphrase prompt

You don't want to be asked for your passphrase every time you communicate with a distant repository. So, you need to add the plugin `ssh-agent` to `oh my zsh`:

- First, open the `.zshrc` file. If you are using VS Code, run this command:

    ```bash
    code ~/.zshrc
    ```

- Spot the line starting with `plugins=`
- Add `ssh-agent` at the end of the plugins list

The list should look like:

```bash
plugins=(gitfast last-working-dir common-aliases zsh-syntax-highlighting history-substring-search pyenv ssh-agent)
```

:white_check_mark: Save the `.zshrc` and close your code editor.

## Ruby & rbenv

There we are! We are finally going to install the language we are interested in for this TDD Discovery: **Ruby**. :heart_eyes:

### rbenv

First, you will install [`rbenv`](https://github.com/sstephenson/rbenv), a software to install and manage `ruby` environments.

- Beforehand, we need to clean up any previous Ruby installation you might have:

    ```bash
    rvm implode && sudo rm -rf ~/.rvm
    # If you got "zsh: command not found: rvm", carry on.
    # It means `rvm` is not on your computer, that's what we want!
    rm -rf ~/.rbenv
    ```

- Then in the terminal, run:

    ```bash
    sudo apt install -y build-essential tklib zlib1g-dev libssl-dev libffi-dev libxml2 libxml2-dev libxslt1-dev libreadline-dev
    ```

    ```bash
    git clone https://github.com/rbenv/rbenv.git ~/.rbenv
    ```

    ```bash
    git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
    exec zsh
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
