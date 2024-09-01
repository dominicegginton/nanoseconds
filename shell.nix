{ pkgs, swift }:

pkgs.mkShell.override { inherit (swift) stdenv; }

{
  inputsFrom = [ pkgs.nanoseconds ];
  packages = [ pkgs.swiftpm2nix ];
}
