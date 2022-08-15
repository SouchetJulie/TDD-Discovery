*This setup is inspired by [Le Wagon](https://github.com/lewagon/setup/blob/master/windows.md) setup.*

# Setup Instructions
The content below will guide you through the configuration of your machine, which is needed for the *TDD Discovery*.
**Please read carefully.**

:crown: If your computer is up to date and you already have a dev environment on it (i.e. terminal, code editor and git CLI), congrats, it will save you a lot of time. You can jump straight to the Ruby configuration.

## Windows updates (you know, that boring stuff)
Before we jump in the tooling setup, we need to make sure you run the latest Windows version, i.e. an up to date version of Windows 11.

<details>
  <summary>How do I know which version of Windows I'm running?</summary>

  - Press `Windows` + `R`
  - Type `winver`
  - Press `Enter`
</details>

### Below Windows 10
If you're running a Windows version prior to Windows 10, please upgrade to Windows 10 (no worries, it's free).

- Go to [Microsoft's](https://www.microsoft.com/software-download/windows10ISO) webiste and download Windows 10.
- Then... install it. :no_mouth:
:warning: This might take a while. If so, team up with your *codemate* and go ahead using both his/her computer.
- One you're done, you can resume the process. :point_down:

### Windows 10
If you're on Windows 10, you need to upgrade to Windows 11 (remember? We need the **latest** version).

- Select the *Start* Button
- Then go to **Settings** > **Update & Security** > **Windows Update**
- Install the update
:warning: This might take a while. If so, team up with your *codemate* and go ahead using both his/her computer.

:bulb: If no available update is showing, you're computer might not be available to the update. We'll try make do without it.
*Disclaimer: you're gonna have a hard time. Let's jump in for the ride.* :sunglasses:

### Windows 11
Good news, you're good to go! You can continue the steup process. :point_down:

### Latest updates
Finally, we need to make sure the lastest updates are installed on your computer. To do that:

- Open Windows Update
- Press `Windows` + `R`
- Type  `ms-settings:windowsupdate`
- Press `Enter`
- Click on `Check updates`



Once you're sure that you're using Windows 10 or 11, you need to install all the latest updates.

Open Windows Update:
- Press `Windows` + `R`
- Type  `ms-settings:windowsupdate`
- Press `Enter`
- Click on `Check updates`

 :white_check_mark: If you see a green check mark and the message *"You're up to date"*, then... you're up to date. :ok_hand:

:heavy_exclamation_mark: If you have a red exclamation mark and the message *"Update available"*, you need to install these updates. Once installed, repeat the process to make sure there ar no new updates (Windows likes to magically bring up new updates after the prior one).

:x: If you have an error message about Windows not being able to apply updates, please **contact a teacher**.

<details>
  <summary>If you have an error message...</summary>

  We're going to activate *Windows Update Service* to fix updates. Some antiviruses and wosftware interfere (i.e. deactivate) it. Uncle Donatien is here to help you bring it back up.
  - Press `Windows` + `R`
  - Type  `services.msc`
  - Press `Enter`
  - Double Click `Windows Update Service`
  - Set `Startup` to `Automatic`
  - Click `Start`
  - Click `Ok`
  Then let's try updates again!
</details>

## GitHub

You will need a GitHub account to go through the TDD Discovery. If you don't already have one, [go create it](https://github.com/join)!

:point_right: Make sure your profile looks like it's yours. **[Upload a picture](https://github.com/settings/profile)** and put your name correctly (do it **now**, not later. Selfies are exceptionnaly authorized in class for that particular step :camera:).

## Windows Subsystem for Linux (WSL)
*Extract from [Le Wagon](https://github.com/lewagon/setup/blob/master/windows.md) setup*

WSL is the development environment we are using to run Ubuntu. You can learn more about WSL [here](https://docs.microsoft.com/en-us/windows/wsl/faq).

:warning: The following instructions depend on your version of Windows. Please execute only the instructions corresponding to your version.

### Windows 11

If you are running Windows 11, this will be fast, as we will install WSL 2 and Ubuntu in one command through the Windows Terminal.

:warning: In the following instruction, please be aware of the `Ctrl` + `Shift` + `Enter` key stroke to execute **Windows Terminal** with administrator privileges instead of just clicking on `Ok`or pressing `Enter`.

- Press `Windows` + `R`
- Type  `wt`
- Press **`Ctrl` + `Shift` + `Enter`**

:warning: **You may have to accept the UAC confirmation about the privilege elevation.**

A blue terminal window will appear. Keep calm and run the following command:

```powershell
wsl --install
```

:white_check_mark: If the command ran without any error, please restart your computer and continue below :+1:

:rotating_light: If you encounter an error message (or if you see some text in red in the window), ~~please **call the teacher**~~... well, it's going to be the first time of the day that you will refer to a friend: your *codemate*, one of your classmates or (the best of all) Google.

### Windows 10

#### Install WSL 1 (Windows 10 only)

If you are running Windows 10, you first need to install WSL 1 through the PowerShell Terminal.

:warning: In the following instruction, please be aware of the `Ctrl` + `Shift` + `Enter` key stroke to execute **Windows PowerShell** with administrator privileges instead of just clicking on `Ok`or pressing `Enter`.

- Press `Windows` + `R`
- Type  `powershell`
- Press **`Ctrl` + `Shift` + `Enter`**

:warning: **You may have to accept the UAC confirmation about the privilege elevation.**

A blue terminal window will appear. Keep calm and run the following commands:

```powershell
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
```

```powershell
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
```

```powershell
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
```

:white_check_mark: If the command ran without any error, please restart your computer and continue below :+1:

:rotating_light: If you encounter an error message (or if you see some text in red in the window), ~~please **call the teacher**~~... well, it's going to be the first time of the day that you will refer to a friend: your *codemate*, one of your classmates or (the best of all) Google.

#### Upgrade to WSL 2 (Windows 10 only)

Then, it's time to upgrade WSL to version 2 (baby steps).

Once your computer has restarted, we need to download the WSL2 installer.

- Go to the [download page](https://aka.ms/wsl2kernel)
- Download "WSL2 Linux kernel update package"
- Open the file you've just downloaded
- Click `Next`
- Click `Finish`

:white_check_mark: If didn't encounter any error message, you're good to go :+1:

:rotating_light: If you encounter the error "This update only applies to machines with the Windows Subsystem for Linux", **right click** on the program and select `uninstall`; you shall be able to install it normally this time.

#### Make WSL 2 the default Windows Subsystem for Linux (Windows 10 only)

Now that WSL 2 is installed, let's make it the default version:
- Press `Windows` + `R`
- Type  `cmd`
- Press `Enter`

In the window which appears, enter:

```bash
wsl --set-default-version 2
```

:white_check_mark: If you see *"The operation completed successfully"*, you can close this terminal and continue to follow the instructions below :+1:

:rotating_light: If you get a message about Virtualization, here is some documentation that might help you:

<details>
  <summary>Enable Virtual Machine Platform Windows feature</summary>

  Follow the steps described [here](https://www.configserverfirewall.com/windows-10/please-enable-the-virtual-machine-platform-windows-feature-and-ensure-virtualization-is-enabled-in-the-bios/#:~:text=To%20enable%20WSL%202,%20Open,Windows%20feature%20on%20or%20off.&text=Ensure%20that%20the%20Virtual%20Machine,Windows%20will%20enable%20WSL%202) until you enable <strong>Virtual Machine Platform</strong> and <strong>Windows Subsystem for Linux</strong>
</details>

<details>
  <summary>Enable Hyper-V Windows feature</summary>

  Follow the steps described [here](https://winaero.com/enable-use-hyper-v-windows-10/) until you enable the group <strong>Hyper-V</strong>

  :information_source: If you are running Windows 10 **Home edition**, Hyper-V feature is not available for your operating system. It's non-blocking and you can still continue to follow the instructions below :ok_hand:
</details>

## Ubuntu
*Extract from [Le Wagon](https://github.com/lewagon/setup/blob/master/windows.md) setup*

### Installation

:warning: As for WSL, the following instructions depend on your version of Windows. Please execute only the instructions corresponding to your version.

#### Windows 11

If you are running Windows 11, after restarting you computer, you should see a terminal window saying WSL is resuming the Ubuntu installation process. When it's done, Ubuntu will be launched.

It's so much easier with Windows 11... :pray:

#### Windows 10

If you are running Windows 10, let's install Ubuntu throught the Microsoft Store:

- Click on `Start`
- Type  `Microsoft Store`
- Click on `Microsoft Store` in the list
- Search for `Ubuntu` in the search bar
- **Select version without any number, just plain "Ubuntu"**
- Click on `Install`

:warning: Don't install **Ubuntu 18.04 LTS** nor **Ubuntu 20.04**!

<details>
  <summary>Uninstall wrong versions of Ubuntu</summary>

  Well, I told you not to install **Ubuntu 18.04 LTS** nor **Ubuntu 20.04**. But if you did anyway, here's how to uninstall wrong versions of Ubuntu.

  Go to the Installed Program List of Windows 10:
  - Press `Windows` + `R`
  - Type  `ms-settings:appsfeatures`
  - Press `Enter`

  Find the software to uninstall and click on the uninstall button.
</details>

Once the installation is finished, the `Install` button becomes a `Launch` button: click on it.

### First launch

At first launch, you will be asked some information:
- Choose a **username**:
    - one word
    - lowercase
    - no special characters
    - for example: `lewagon` or your `firstname`
- Choose a **password**
- Confirm your password :+1:

:no_mouth: When you type your password, nothing will show up on the screen, **that's normal**. This is a security feature to mask not only your password as a whole but also its length. Just type your password and when you're done, press `Enter`.

You can close the Ubuntu window now that it is installed on your computer.

### Check the WSL version of Ubuntu

- Press `Windows` + `R`
- Type  `cmd`
- Press `Enter`

Type the following command:

```bash
wsl -l -v
```

:white_check_mark: If the version of Ubuntu WSL is 2, you are good to go. :ok_hand:

:x: If the version of Ubuntu WSL is 1, we will need to convert it to version 2.

<details>
  <summary>Convert Ubuntu WSL V1 to V2</summary>

  In the Command Prompt window, type:

  ```bash
  wsl --set-version Ubuntu 2
  ```

  :white_check_mark: After a few seconds, you should get the following message: `The conversion is complete`.

  :x: If it does not work, we need to be sure that Ubuntu files are not compressed.
</details>

<details>
  <summary>Check for Uncompressed Files</summary>

  - Press `Windows` + `R`
  - Type  `%localappdata%\Packages`
  - Press `Enter`
  - Open the folder named `CanonicalGroupLimited.UbuntuonWindows...`
  - Right Click on the `LocalState` folder
  - Click on `Properties`
  - Click on `Advanced`
  - Make sure that the option `Compress content` is **not** ticked, then click on `Ok`.

  Apply changes to this folder only and try to convert the Ubuntu WSL version again.

  :x: If the conversion still does not work, refer to your best buddy: your *codemate*, one of your classmates or simply Google.
</details>

You can now close this terminal window. :wave:

## Code Editor
If you have a favorite code editor that you are accostumated to used, perfect. You just need to make sure it's connected to Ubuntu. You are probably going to go through the documentation for that.
You can Google `Connect [your code editor name] to Ubuntu on Windows` to find some helpful links.

If you don't, no worries : we'll install **[Visual Studio Code](https://code.visualstudio.com)**.

### Installation

- Go to the [Visual Studio Code download page](https://code.visualstudio.com/download), select your OS.
- Go through the installation process with [these options](https://github.com/lewagon/setup/raw/master/images/windows_vscode_installation.png).

When the installation is finished, launch VS Code.

### Connecting VS Code to Ubuntu

To make VS Code interact properly with Ubuntu, let's install the [Remote - WSL](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-wsl) VS Code extension.

- Open your **Ubuntu terminal** and run the following command in the terminal:

    ```bash
    code --install-extension ms-vscode-remote.remote-wsl
    ```

- Then open VS Code from your terminal:

    ```bash
    code .
    ```

:white_check_mark: If you see `WSL: Ubuntu` in a green box in the bottom left corner of the VS Code window, you're all good. :ok_hand:

:x: Otherwise, refer to your best buddy: your *codemate*, one of your classmates or simply Google.

## Windows Terminal

### Installation

:warning: The following instructions depend on your version of Windows.

If you are running Windows 11, the Windows Terminal is already installed and you can proceed to the next section. We definitely love Windows 11. :blue_heart:

If you are running Windows 10, you need to install Windows Terminal, a real modern terminal:

- Click on `Start`
- Type  `Microsoft Store`
- Click on `Microsoft Store` in the list
- Search for `Windows Terminal` in the search bar
- **Select Windows Terminal"**
- Click on `Install`

:warning: DO NOT install **Windows Terminal Preview**, just **Windows Terminal**!

<details>
  <summary>Uninstall wrong version of Windows Terminal</summary>

  To uninstall a wrong version of Windows Terminal, you just have to go to the Installed Program List of Windows 10:

  - Press `Windows` + `R`
  - Type  `ms-settings:appsfeatures`
  - Press `Enter`

  Find the software to uninstall and click on the uninstall button.
</details>

Once the installation is finished, the `Install` button becomes a `Launch` button: click on it.

### Ubuntu as the default terminal

Let's make Ubuntu the default terminal of your Windows Terminal application.

Press `Ctrl` + `,`

It will open the terminal settings:
- Change the default profile to "Ubuntu"
- Click on "Save"

Now, you need to [tweak wome settings](https://github.com/lewagon/setup/raw/master/images/windows_terminal_settings_json.png):
- Click on "Open JSON file"
- Locate the `"name": "Ubuntu",`
- Add the following line after it. This will make Ubuntu start directly inside your Ubuntu Home Directory instead of the Windows one.

    ```bash
    "commandline": "wsl.exe ~",
    ```

    :warning: Do not forget the comma at the end of the line!

- Locate the line `"defaultProfile": "{2c4de342-...}"`
- Add the following line after it. This will disable warning for copy-pasting commands between Windows and Ubuntu.

    ```bash
    "multiLinePasteWarning": false,
    ```

    :warning: Do not forget the comma at the end of the line!

- Finally, save these changes (good old `Ctrl` + `S`).

:white_check_mark: Your **Windows Terminal** is now setup. :ok_hand:

> This terminal has tabs: you can choose to open a new terminal tab by clicking on the **+** next to the current one.
> **From now on, every time we will refer to the terminal or the console it will be this one.** DO NOT use any other terminal anymore.

## VS Code Extensions

The great thing with VS Code is that you can install plenty of extensions to supercharge your code editor. Here are some useful VS Code extension.

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
*Extract from [Le Wagon](https://github.com/lewagon/setup/blob/master/windows.md) setup*

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

:no_mouth: When you type your password, nothing will show up on the screen, **that's normal**. This is a security feature to mask not only your password as a whole but also its length. Just type your password and when you're done, press `Enter`.

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

:x: Otherwise, refer to your best buddy: your *codemate*, one of your classmates or simply Google.


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

In order to have a file configuration identical for everyone, we'll use a template. More specifiaclly, the [Dotfiles](https://github.com/lewagon/dotfiles) template from Le Wagon. Thus, you will fork Le Wagon repository.

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


Now, it's time to fork the repo and clone it on your computer:

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

There we are! We are finally going to install the language we are interested in for this TDD Discovery: **Ruby**.

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

:white_check_mark: If you see something starting with `ruby 3.1.2p` then you can proceed +1:


### Installing some gems

In the ruby world, we call external libraries `gems`: they are pieces of ruby code that you can download and execute on your computer. Let's install some!

In your terminal, copy-paste the following command:

```bash
gem install colored faker http pry-byebug rake rails rest-client rspec rubocop-performance sqlite3
```

:white_check_mark: If you get `xx gems installed`, then all good :+1:

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

Le Wagon created a cool script that ensures that everylittle thing specified above is correctly installed on your machine. We'll use it as a final check before departure. :rocket:

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
