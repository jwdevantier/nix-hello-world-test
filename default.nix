{ pkgs ? import <nixpkgs> {} }:
rec {
  iddqd = pkgs.callPackage ./iddqd.nix {};
}
