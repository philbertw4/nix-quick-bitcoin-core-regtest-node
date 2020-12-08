# Nix-quick-bitcoin-core-regtest-node

## What is this?
There are some times where you may want to play with some features which have
recently been merged into bitcoin core, but have not yet been pushed into an
official release. If you have the package manager [Nix](https://nixos.org) 
installed (note: you just need the package manager, not necessarily full NixOS),
then this is for you!

What you get is a (somewhat) sandboxed environment where you have access to the
build of bitcoin that you are needing.

## How to use?

1. Make sure you have Nix installed.
2. Clone this repository.
3. Edit the file `overlaybtc.nix` to use the commit from [bitcoin/bitcoin](https://github.com/bitcoin/bitcoin) that you want.
4. `$ nix-shell` (may take some time if it is your first time running)
5. Nix will do its magical thing and then drop you into a shell.
6. start bitcoind in regtest mode: `$ bitcoind -regtest`
7. `$ bitcoin-cli --version` should give you some info showing that you are using the version you intended
8. Have fun hacking!

### How does it work?
There is no real magic here. We start from the most recent [release of bitcoin core](https://github.com/NixOS/nixpkgs/blob/nixos-20.09/pkgs/applications/blockchains/bitcoin.nix#L80) which is
already available in Nixpkgs. Then we override some parameters in that package so that
it will pull down sources fresh.

### Caveats
1. This will only really work if the dependencies of bitcoin core have not changed since the last release which made it into Nixpkgs. If the commit you are testing also added/changed dependencies for bitcoin core, then it may not work.
2. Do not use this method for running nodes in production.

### License
Public domain.


