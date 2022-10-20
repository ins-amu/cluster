# SSH

SSH is the protocol usually used to access the cluster. It allows
access to a command line and optionally to run graphical programs
on the cluster, with the GUI showing on your computer.

## Connecting

The first step in using the cluster is connecting. How to connect
depends on your operating system.

### Windows

First download [PuTTY](http://www.chiark.greenend.org.uk/~sgtatham/putty/download.html)

Then fill the cluster IP address `139.124.148.56` followed by your username and password.

### Mac OS X

```bash
ssh username@139.124.148.56
```

### Linux

```bash
ssh username@139.124.148.56
```

## Tips for Mac/Linux

To make things faster when logging in, you can use the following tricks with SSH:

### Define cluster host in `~/.ssh/config`

To avoid typing `user@139.124.148.56` all the time, you can add an entry to the
`.ssh/config` file (create the file if it doesn't exist):

```
Host cluster
    HostName 139.124.148.56
    User user
```

Now you simply type `ssh cluster` and bingo you're in.

### Setup an authorized key

Set up an SSH key if you don't already have one:

```bash
mycomputer $ ssh-keygen
......
```

This will set up a private-public key pair. 

Next, put the public key in the `.ssh/authorized_keys` file on the cluster. 

```bash
mycomputer $ cat .ssh/id_rsa.pub | ssh user@139.124.148.56 'cat - >> ~/.ssh/authorized_keys'
<enter password>
```

Now, `ssh user@139.124.148.56` should not require password.

NB: this is the same key you copy onto GitHub to automate access
to your repositories there (if you use GitHub).
