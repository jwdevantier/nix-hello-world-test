{ pkgs ? import <nixpkgs> {} }:
let
  def = import ./default.nix { pkgs = pkgs; };
in
  pkgs.mkShell {
    buildInputs = [def.iddqd];
  }
