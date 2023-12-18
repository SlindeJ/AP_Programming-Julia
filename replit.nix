{ pkgs }: {
    deps = [
      pkgs.zulu
      pkgs.python39Packages.pip
        pkgs.qtile
        pkgs.julia-bin
    ];
}