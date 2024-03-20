
with import <nixpkgs> {};

with pkgs;
stdenv.mkDerivation {
  name = "cqoute";
  version = "1.0.1";
  src = ./.;
  buildInputs = [ ];

  buildPhase = "make";
  nativeBuildInputs = [ pkg-config curl ];
  installPhase = ''
    mkdir -p $out/bin
    cp cquote $out/bin/cquote
  '';
}
