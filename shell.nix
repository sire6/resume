{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    texlive.combined.scheme-full
  ];

  shellHook = ''
    alias buildcv='pdflatex -interaction=nonstopmode -output-directory=build resume.tex'
  '';
}
