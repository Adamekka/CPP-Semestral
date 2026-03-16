{
  description = "C++ Flake";

  inputs = {
    flake-parts.url = "github:hercules-ci/flake-parts";
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs =
    inputs@{ flake-parts, nixpkgs, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "aarch64-darwin"
        "x86_64-darwin"
      ];
      perSystem =
        { config, pkgs, ... }:
        {
          devShells.default = pkgs.mkShell.override { stdenv = pkgs.llvmPackages_latest.libcxxStdenv; } {
            packages = with pkgs; [
              clang-tools
              clang-analyzer
              cmake
              lldb
              ninja
              binutils
              gemini-cli
              pkg-config
            ];

            shellHooks = "";
          };
        };
    };
}
