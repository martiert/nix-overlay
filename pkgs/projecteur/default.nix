{
  pkgs ? import <nixpkgs> {}
}:

let
  qtLibsFor = pkgs.libsForQt5;
  inherit (pkgs.libsForQt5) callPackage;
  projecteur = callPackage ./derivation.nix { };
in projecteur
