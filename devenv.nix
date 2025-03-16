{pkgs, ...}: {
  packages = with pkgs; [
    alsa-lib
    udev
    xorg.libX11
    xorg.libX11.dev
  ];

  env.LD_LIBRARY_PATH = with pkgs;
    lib.makeLibraryPath [
      vulkan-loader
      libxkbcommon
      xorg.libXrandr
      xorg.libXinerama
      xorg.libXcursor
      xorg.libXi
    ];

  languages.rust.enable = true;
}
