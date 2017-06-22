# CLI scripts

This project is a mixture of useful scripts I use in the terminal.
They are mostly intended (but not limited to) to be used on Ubuntu Server.
I primarily put them on the Internet for myself,
to be able to access them from various places and computers,
but I will be pleased if you use them and if you provide some feedback, too.

The scripts with the executable flag are intended to be run directly.
Before running a script, please open it in a text viewer
and read the documentation in the header.
Ideally, you should understand the code before running it.

## Organization of the repository

The individual scripts are mostly unrelated to each other,
unless indicated by a similar filename.

Some scripts extend features of another program,
e.g. `svn_*` scripts extend the `svn` command.
An underscore is used to mark a weak interconnection
to the original command, unlike `git-gui` or `apt-get`, for example.

The scripts located in the `sbin` folder require administrative privileges
while these in the `bin` folder do not.
