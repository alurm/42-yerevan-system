{
  outputs = {
    nixpkgs,
    flake-utils,
    ...
  }: flake-utils.lib.eachDefaultSystem (system: let
    pkgs = nixpkgs.legacyPackages.${system};
  in {
    packages.default = pkgs.symlinkJoin {
      name = "my-profile-package";
      paths = with pkgs; [
        brave
        alejandra
        helix
        jujutsu
        direnv
        fish
        nix-direnv
      ];
    };
  });
}
