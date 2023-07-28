# Xenofeminism manifesto

> Small publishing/edition project of the French version of the Xenofeminism manifesto, written by the Laboria Cuboniks collective.

The original manifesto can be found here: https://laboriacuboniks.net/manifesto/

## Objectives

- Copy edit, proofread the French version
- Add typography small touches: unbreakable spaces, thin spaces, etc.
- Use an inclusive font, such as those listed here: https://typotheque.genderfluid.space/index.html
- Build a LaTeX template
- Build a cover page with LaTeX
- Use a GitHub Workflow to produce the final PDF
- Produce a small zine from the LaTeX files

## Local export

`pandoc -o out.pdf --pdf-engine=xelatex --template=input/main.tex input/manifesto.md`

## About the font used: Adelphe

Source: https://gitlab.com/Eugenie-B/adelphe

> L’Adelphe est un caractère de labeur dont l’enjeu principal est de proposer plusieurs manières de pratiquer l’écriture inclusive sur du texte long, en petit corps, et sans altération du gris typographique. Son nom, qui signifie à la fois frère et sœur de manière non-genrée, est très utilisé au sein des communautés militantes queers. Mais c’est aussi un mot qui trouve son étymologie dans le grec ancien, à la manière des mots savants. Et il y a une volonté avec ce caractère d’aller sur ce terrain, sur le terrain de la culture qui s’auto-définit comme « haute » et savante. Et, ainsi, de ne pas se laisser confisquer l’histoire de la langue et de l’écriture par le camp conservateur. C’est pourquoi l’Adelphe, dans son dessin, présente des proportions classiques, héritées de la Renaissance, et un tracé proche de la calligraphie, avec une fluidité dans le ductus qui permet de produire des formes harmonieuses, y compris dans le dessin des signes inclusifs. Il y a 3 versions de l’Adelphe qui proposent 3 manières différentes de pratiquer l’écriture inclusive. L’Adelphe Germinal dans lequel le point médian est utilisé, l’Adelphe Floréal dans lequel les premières lettres des terminaisons masculines et féminines sont marquées par des signes diacritiques souscrits (accents sous les lettres), et l’Adelphe Fructidor qui combine l’usage d’une forme alternative de « e » et de ligatures.

## Liens

- https://jvns.ca/blog/2019/09/01/ways-to-write-zines-without-fancy-tools/
- https://www.stealing.rocks
- https://gist.github.com/michaelt/1017790
- https://gitlab.com/severinkaderli/pandoc-latex-templates/-/tree/master/templates
- https://typo-inclusive.net/inventaire/
