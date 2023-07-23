# xenofeminism-manifesto-fr

## Work in progress — Petit projet d'édition de la version française du manifeste XÉNOFÉMINISME de Laboria Cuboniks.

## Todo:

- Corriger
- Espace insécable, ligature, tiret, etc.
- Intégrer une fonte inclusive https://typotheque.genderfluid.space/, https://velvetyne.fr/, https://typo-inclusive.net/inventaire/
- Préparer un design/mise en page https://www.editionsdivergences.com/, 8.5x11 plié sur le long
- Scripter la création du pdf avec latex https://jvns.ca/blog/2019/09/01/ways-to-write-zines-without-fancy-tools/
- Template LaTex + Markdown source + Pandoc export en PDF
- Imprimer/distribuer
- Faire une version web, qui réutilise des éléments du look imprimé https://www.stealing.rocks (CSS blurry type)

## Exporter

> pandoc -o out.pdf --pdf-engine=xelatex --template=main.tex in.md

## Liens

- https://gist.github.com/michaelt/1017790
- https://gitlab.com/severinkaderli/pandoc-latex-templates/-/tree/master/templates
