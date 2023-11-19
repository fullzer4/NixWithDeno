{ pkgs ? import <nixpkgs> { }
, pkgsLinux ? import <nixpkgs> { system = "x86_64-linux"; }
}:

pkgs.dockerTools.buildImage {
  name = "docker";

  config = {
    Cmd = [ "./NixWithDeno" ];
  };
}

