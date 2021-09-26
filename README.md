# PokePi
Flexible Pokedex Framework for Raspberry Pi

## Build

Make sure submodules are initialized:

```sh
git submodule update --init
```

Change to the top-level Buildroot directory:

```sh
cd buildroot
```

Use initialized configurations, including the defconfig and this external directory, and compile:

```sh
make BR2_EXTERNAL=../ all
```

This may take a couple hours to do from scratch, depending on the speed of your machine.
