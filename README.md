
<p align="center">
  <img src="https://img.shields.io/badge/LaTeX-Professional-blue?style=for-the-badge&logo=latex&logoColor=white" alt="LaTeX badge" />
  <img src="https://img.shields.io/badge/License-MIT-green?style=for-the-badge" alt="MIT License badge" />
  <img src="https://img.shields.io/badge/PDF-Auto--Generated-critical?style=for-the-badge&logo=github-actions&logoColor=white" alt="PDF Auto badge" />
</p>

# <span style="color:#2d4159">Resume LaTeX Template</span>

<p align="center"><em>Automated, professional, and always up-to-date.</em></p>

---

This repository contains the LaTeX source file for my CV. The main goal is to automate PDF generation every time a change is made to <code>resume.tex</code> using a GitHub Actions pipeline.


## 🚀 How it works

- On every push or pull request to the <strong>main branch</strong>, a <span style="color:#6e40c9">GitHub Actions</span> workflow automatically compiles the LaTeX file (<code>resume.tex</code>) and generates the corresponding PDF.
- The generated PDF is then published as a workflow artifact or added to the releases section, ensuring there is always an up-to-date version of the CV without manual compilation.



## 📁 Repository structure

- <code>resume.tex</code>: LaTeX source of the CV 
- <code>developercv.cls</code>: Custom LaTeX class file
- <code>build/</code>: Output directory for generated files (PDF, aux, log, etc.)
- <code>.github/workflows/latex-pdf.yml</code>: GitHub Actions workflow for automatic PDF build
- <code>LICENSE</code>: MIT License (see the file for details)







## 🖥️ Local usage


To build the CV locally with Nix:

```bash
nix-shell
build-resume
```

This will generate <code>build/resume.pdf</code>. Open it with your preferred PDF viewer.


## 🤖 GitHub Actions: Automatic PDF build


Every push or pull request on <strong>main</strong> triggers a workflow (<code>.github/workflows/latex-pdf.yml</code>) that:

1. Uses <strong>Nix</strong> to provide a reproducible LaTeX environment (matching local usage)
2. Compiles <code>resume.tex</code> (output in <code>build/</code>)
3. Publishes the PDF to GitHub Pages for public access at a fixed URL

This ensures your CV PDF is always up-to-date and available at a public, stable URL (see below) without manual compilation or committing generated files. The build environment is identical to local builds using Nix, guaranteeing consistency.

---

## 🌐 Public PDF URL

The latest version of the CV PDF is always available at:

```
https://sire6.github.io/resume/resume.pdf
```

## 👥 Authors and credits

- Original template: <strong>Jan Vorisek</strong> (based on a template by Jan Küster)
- Modifications and adaptation: Simon Renuart


<sub>Thanks to Jan Vorisek for creating and sharing the original template under the MIT license. Please refer to the LICENSE file for usage and modification rights.</sub>

---

