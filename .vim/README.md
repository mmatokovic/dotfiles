# Vim configuration

`%HOMEPATH%\_ideavimrc`

The location where IntelliJ IDEA looks for ideavimrc depends on the user.home JVM option, which is set to the user's home directory by default. For more information, refer to JVM options.

Include the configuration from vimrc with the source command in your ideavimrc file:

```plain
source ~/.vimrc
```

This way you can also include other commands in your ideavimrc file, which will be applied only to your Vim in IntelliJ IDEA and will not affect actual Vim configuration.

If you don't want to use your Vim configuration, you can rename **.vimrc** to **.ideavimrc**.

Create ideavimrc as a symlink to vimrc if you don't want to modify your Vim in IntelliJ IDEA compared to actual Vim configuration:

```plain
mklink _ideavimrc _vimrc
```
