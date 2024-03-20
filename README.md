# powertux
A collection of scripts and software I made to save time &amp; mental health, open sourced because why not making the world easier for everyone

- [powertux](#powertux)
  - [Important Informations](#important-informations)
  - [Software Documentation](#software-documentation)
    - [btrfswapper](#btrfswapper)
      - [Dependencies](#dependencies)
      - [Usage](#usage)
      - [Various](#various)
      - [Special Notes](#special-notes)
    - [filehere](#filehere)
      - [Usage](#usage-1)
      - [Various](#various-1)
    - [flatline](#flatline)
      - [Usage](#usage-2)
      - [Warnings](#warnings)
    - [gapt / gdpkg](#gapt--gdpkg)
      - [Warning \& Disclaimer](#warning--disclaimer)
      - [Usage](#usage-3)
    - [gitup](#gitup)
      - [Dependencies](#dependencies-1)
      - [Usage](#usage-4)
      - [Warning](#warning)
    - [gophereal](#gophereal)
      - [Usage](#usage-5)
    - [ksudo](#ksudo)
      - [Warning \& Disclaimer](#warning--disclaimer-1)
      - [Usage](#usage-6)
    - [machange](#machange)
      - [Dependencies](#dependencies-2)
      - [Usage](#usage-7)
      - [Various](#various-2)
    - [megafix](#megafix)
      - [Dependencies](#dependencies-3)
      - [Usage](#usage-8)
    - [pathis](#pathis)
      - [Usage](#usage-9)
      - [Various](#various-3)
    - [phantom](#phantom)
      - [Usage](#usage-10)
      - [Various](#various-4)
    - [prettyall](#prettyall)
      - [Dependencies](#dependencies-4)
      - [Usage](#usage-11)
      - [Warning](#warning-1)
    - [waybareload](#waybareload)
      - [Dependencies](#dependencies-5)
      - [Usage](#usage-12)
      - [Warning](#warning-2)


## Important Informations
This software is free software and is made to be a collection of handy scripts, wrappers and software to help you being lazy while being productive.

Jokes aside, this is all highly personal software meaning that is tailored on my own linux experience and desired behaviour. You may find many of these scripts useless or too complicated, depending on your personal taste and personal preferences.

Please note that you should read the documentation before doing anything as many scripts may possibly break or change your user experience in unforeseen ways.

## Software Documentation

### btrfswapper
Easy swapfile and swapiness management on btrfs fs

#### Dependencies

- You must be on a btrfs filesystem

#### Usage

`btrfswapper nG <swappiness>`

- nG stands for number + G, i.e. 8G will set the swapfile to 8GB
- swappiness is optional and defaults to 60

#### Various

- This software writes on /swapdir/ creating the folder if it does not exists
- In /swapdir/ this software creates the swapfile itself

#### Special Notes
The change is not permanent as stated in the script itself.
You can make it persistant by editing /etc/sysctl.conf and locating vm.swappiness.

### filehere
Opens a file manager (configured in the script) in "."

#### Usage

`filehere`

#### Various

- You should edit the binary to ensure you have the correct file manager written
- Defaults to pcmanfm-qt (cause is what I use)

### flatline
Handy tool to install .flatpakref files

#### Usage

`flatline yourpackage.flatpakref`

#### Warnings

- Still prone to failures without a proper warning message

### gapt / gdpkg
They use the same syntax: both forces installation of .deb files (or apt packages) no matter what.

#### Warning & Disclaimer

- This is quite destructive. It can seriously impact your system. Please use it only if you accept the risks

#### Usage

`gapt apt_package`
or
`gdpkg package.deb`

### gitup
One of my favorite. A git wrapper that, once in a repository do the following: it adds everything (with git add .), commit everything with a message provided by the user, if it is installed uses trunk to check, fix and format the code, re-commit everything and push it.

#### Dependencies

- (optional) trunk linter
- git
- being in a repository

#### Usage

`gitup "I am a commit message"`

#### Warning

- Don't complain if you commit something that wasn't meant to be committed

### gophereal
Uses GNU tools to fetch an url and extract all the "http" and "https" links from the source of the page.

#### Usage

`gophereal https://alinkwithalotoflinks.com/works/on/sub/pages/too"`

### ksudo
Have you ever heard of gsudo? Anyway, sometimes you just want to launch a command with sudo automatically (like at startup) but you don't have / want a console prompt. Well, ksudo does it.

Long story short: ksudo wraps `pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY $1` so that the your GUI launches a command as superuser after prompting for a password graphically.

#### Warning & Disclaimer
Please note that this script exposes superuser functionalities. Is tested on my machine but has not been assessed for any particular sensitive case.

#### Usage

`ksudo yourapp`

Either from the CLI or from any runner. You can use it also on login scripts and so on.

### machange
Automates random MAC address change for the specified interface.

#### Dependencies

- macchanger (apt install macchanger)

#### Usage

`machange`

#### Various

- Please ensure that this script has the right interface configured in the appropriate variable
- You may want to auto-execute it at boot: is a nice stuff to do

### megafix
Kills and re-run megasync with the --nogfx option to avoid thumbnails generation. Fixes many problems of the megasync software.

#### Dependencies

- megasync (bruh)

#### Usage

`megafix`

### pathis
A simple tool to add the current path to the $PATH environment variable permanently

#### Usage

`pathis`

#### Various

- Writes to /etc/profile.d/pathis.sh
- Should be persistant by default
- Uses $(pwd) to find the path to add

### phantom
Use this to run something, detaching and ignoring the output.

#### Usage

`phantom yourapp`

#### Various

- May show some output initially

### prettyall
Recursively execute prettier on every .js/.ts file excluding modules.

#### Dependencies

- prettier

#### Usage

`prettyall`

#### Warning

- May be RAM intensive

### waybareload
Quickly reload waybar configuration

#### Dependencies

- waybar (you don't say?)

#### Usage

`waybareload`

#### Warning

- If waybar configuration is invalid, it won't be reloaded of course