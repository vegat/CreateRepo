CreateRepo
==========

Simple tool for creating remote (bare) repo and link it to local repository.

Create GIT repository on remote server. If you start a new project, simply create your initial source (eg. HTML / PHP files), access your project directory with your command line and type:

```
createrepo ProjectName
```

This will initialize local repository, create remote (bare) repository and add "origin" link to your local GIT config file.
Also initial commit will be created and uploaded to newly created repo.

Installation
============

Installation is simple. Just download (or clone) createrepo.sh to your directory and execute as root:
```
cp createrepo.sh /usr/bin/createrepo
chmod +x /usr/bin/createrepo
```

Thats all!
