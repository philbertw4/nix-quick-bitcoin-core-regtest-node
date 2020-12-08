{ pkgs ? import <nixpkgs> { overlays = [ (import ./overlaybtc.nix) ]; } }:
  pkgs.mkShell {
    nativeBuildInput = [ pkgs.buildPackages.bitcoin ];
  }
