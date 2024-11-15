let
  # We pin to a specific nixpkgs commit for reproducibility.
  # Last updated: 2024-11-14. Check for new commits at https://status.nixos.org.
  pkgs = import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/24f0d4acd634792badd6470134c387a3b039dace.tar.gz") {};

  # lmfit-pkgs = imdort (fetchTarball "https://github.com/NixOS/nixpkgs/archive/fd04bea4cbf76f86f244b9e2549fca066db8ddff.tar.gz") {};

  ipython = pkgs.python312Packages.ipython;
  pyvisa = pkgs.python312Packages.pyvisa;
  matplotlib = pkgs.python312Packages.matplotlib;
  numpy = pkgs.python312Packages.numpy;
in
  pkgs.mkShell
  {
    buildInputs = [matplotlib numpy pyvisa ipython];
  }
