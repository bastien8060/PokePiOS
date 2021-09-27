# PokePi - WIP
Flexible Pokedex Framework for Raspberry Pi. It lets you run and build a DIY PokeDex which uses Machine Learning to recognize Pokemons.

To ~~run it~~, you will first need to build it.

> Warning: At the moment this project does not work. It will be only released later. This project is still far from being released. The following only builds the top OS, which PokePi is going to run on. Not PokePi itself.

> Soon, you will have the option to build PokePi on top of another Linux Distro/build, or build it, part of an optimized Linux build. Prebuilt binaries and images will also be released on this repo.

## Build

Download repo + navigate to it:

```sh
git clone https://github.com/bastien8060/PokePi
cd PokePi
```

Change to the top-level Buildroot directory:

```sh
cd buildroot
```

Use initialized configurations to compile PokePi:

```sh
make all
```

This may take anywhere from 10min to 30min or even a couple hours to do from scratch, depending on the speed of your machine.

## Run on Raspberry Pi
After building it, you can flash the file `output/images/sdcard.img` to an sdcard, then boot it with a Raspberry Pi 3b/3b+.

#### - Flash sdcard.img on Windows/Linux/MacOS
You can download Etcher: https://www.balena.io/etcher/
#### - Alternative: Flash sdcard.img on Linux
Replace /dev/sdx with your sdcard:
```sh
sudo dd bs=1M if=output/images/sdcard.img of=/dev/sdx
```

## Emulate PokePi on PC:

Read More: https://github.com/bastien8060/PokePi-Emulator
