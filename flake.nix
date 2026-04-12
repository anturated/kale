{
  description = "make your launch args shorter";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs =
    { self, nixpkgs }:

    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      nixosModules.default =
        { pkgs, ... }:
        {
          imports = [
            ./kale.nix
            ./kaled.nix
          ];
        };
    };
}
