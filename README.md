# rt-labs Buildroot tree

This repository contains a Buildroot external tree for rt-labs
packages.

The contents of this repository are licensed under GPLv3. See each
package for their respective license.

# Usage

Clone Buildroot:

```
$ git clone git://git.buildroot.net/buildroot
```

Clone this repository:

```
$ git clone https://github.com/rtlabs-com/br2-rtlabs.git
```

Set the default configuration for your board (this example is for a
Raspberry Pi 4).

```
$ cd buildroot
$ make BR2_EXTERNAL=../br2-rtlabs raspberrypi4_defconfig
```

Start the menuconfig and select the packages you need. rt-labs
packages will be under **External options**.

```
$ make menuconfig
```

Finally run make to build everything.

```
$ make
```

Demos and samples will be installed under /usr/bin in the target
filesystem.

See the [Buildroot user
manual](https://buildroot.org/downloads/manual/manual.html) for
detailed instructions.
