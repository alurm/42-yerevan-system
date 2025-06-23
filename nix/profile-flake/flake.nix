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
        direnv
        fish
        nix-direnv
        rlwrap
        nixd
        atool
        git
        # jujutsu # Using a fork instead at the moment.
      ];
    };
  });
}
