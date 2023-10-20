{ pkgs }: {
    deps = [
      pkgs.python39Packages.pip
        pkgs.qtile
        pkgs.julia-bin
    ];
}