{
  description = "Flake for projecteur";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    projecteur = {
      url = "github:jahnf/Projecteur";
      flake = false;
    };
    mutt-ics = {
      url = "github:dmedvinsky/mutt-ics";
      flake = false;
    };
  };

  outputs = { self, nixpkgs, flake-utils, projecteur, mutt-ics }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
        qtLibsFor = pkgs.libsForQt5;
        inherit (pkgs.libsForQt5) callPackage;
      in rec {
        packages = {
          projecteur = callPackage ./projecteur { inherit projecteur; };
          generate_ssh_key = callPackage ./generate_ssh_key {};
          mutt-ics = callPackage ./mutt-ics { inherit mutt-ics; };
        };
    });
}
