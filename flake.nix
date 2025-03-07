{
  inputs.nixpkgs.url = "github:nixos/nixpkgs?ref=nixpkgs-unstable";

  inputs.tolerable.url = "github:wires-org/tolerable-nvim-nix";
  inputs.tolerable.inputs.nixpkgs.follows = "nixpkgs";

  outputs = {
    self,
    nixpkgs,
    ...
  } @ inputs: let
    forAllSystems = function:
      nixpkgs.lib.genAttrs [
        "x86_64-linux"
        "x86_64-darwin"
        "aarch64-linux"
        "aarch64-darwin"
      ] (system: function nixpkgs.legacyPackages.${system});
  in {
    packages = forAllSystems (pkgs: {
      neovim = inputs.tolerable.makeNeovimConfig "config" {
        inherit pkgs;
        src = pkgs.lib.fileset.toSource {
          root = ./.;
          fileset = ./config;
        };
        config = {
          plugins = with pkgs.vimPlugins; [
            # Plugins are installed via lazy-nvim.
            # This one specifically doesn't seem to work but I don't know why.
            oxocarbon-nvim
          ];
        };
        path = with pkgs; [
          # Deps
          ripgrep

          # LSP
          lua-language-server

          nixd

          pyright

          dotnet-sdk
          csharp-ls
        ];
      };
    });
  };
}
