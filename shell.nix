{ pkgs ? import <nixpkgs> {} }:


pkgs.mkShell {
  buildInputs = with pkgs; [
    texlive.combined.scheme-full
  ];
  shellHook = ''
    alias build-resume='pdflatex -interaction=nonstopmode -output-directory=build resume.tex && pdflatex -interaction=nonstopmode -output-directory=build resume.tex'
  '';
}
