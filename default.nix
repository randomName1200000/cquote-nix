
with import <nixpkgs> {};

with pkgs;
stdenv.mkDerivation {
  name = "nix-test";
  version = "0.0.1";
  src = ./.;
  buildInputs = [ ];

  buildPhase = "make";
  nativeBuildInputs = [ pkg-config curl ];
  installPhase = ''
    mkdir -p $out/bin
    cp cquote $out/bin/cquote
  '';
}
