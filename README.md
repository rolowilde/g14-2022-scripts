# ASUS ROG Zephyrus G14 (2022) scripts for Linux

A simple alternative to asusctl/supergfxctl in POSIX-compatible shell,
specifically for GA402RK/J. Scripts in this repository interface with
asus-nb-wmi and asus-armoury (if available) kernel modules.

## Install

Run `make install` which installs the scripts and udev rules.

## Usage

Each script can be used without arguments as a toggle, for example, to be run
with a hotkey. Running as root is discouraged; install the udev rules instead.

### fanctl

Forces CPU and GPU fan curve: max out the fan speed or reset to BIOS defaults.
Optionally accepts `0` (reset fan curve) or `1` (disable PWM) as the only
argument. Will not do anything if dGPU is disabled or laptop is in quiet
profile.

### gpuctl

Depends on libnotify for toggling on/off the dGPU interactively. When executed,
waits for user confirmation whether to shutdown or reboot aferwards. Will not
do anything if user dismissed the notification.
