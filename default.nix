{ lib, swift, swiftpm, swiftpm2nix }:

with lib.sources;

let
  generated = swiftpm2nix.helpers ./nix;
in

swift.stdenv.mkDerivation rec {
  pname = "nanoseconds";
  version = "1.1.3";
  src = cleanSource ./.;
  nativeBuildInputs = [ swift swiftpm ];

  configurePhase = generated.configure;

  installPhase = ''
    binPath="$(swiftpmBinPath)"
    mkdir -p $out/lib
    cp -r $binPath/* $out/lib
  '';
}
