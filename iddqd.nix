{ stdenv, coreutils, gcc }:
stdenv.mkDerivation {
  name = "iddqd";

  # Source Code
  # See: https://nixos.org/nixpkgs/manual/#ssec-unpack-phase
  src = ./src;

  # Dependencies
  # See: https://nixos.org/nixpkgs/manual/#ssec-stdenv-dependencies
  buildInputs = [ coreutils gcc ];

  # Build Phases
  # See: https://nixos.org/nixpkgs/manual/#sec-stdenv-phases
  configurePhase = ''
    declare -xp
  '';
  buildPhase = ''
    gcc "$src/iddqd.c" -o ./iddqd
  '';
  installPhase = ''
    mkdir -p "$out/bin"
    cp ./iddqd "$out/bin/"
  '';
}

