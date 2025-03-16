{pkgs, ...}: {
  packages = with pkgs; [
    alsa-lib
    udev
  ];

  env.LD_LIBRARY_PATH = with pkgs;
    lib.makeLibraryPath [
      xorg.libXrandr
      xorg.libXinerama
      xorg.libXcursor
      xorg.libXi
    ];

  languages.rust.enable = true;
}
