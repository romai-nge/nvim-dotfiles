---@diagnostic disable: undefined-global
return {
    s(
        { trig = "preamble" },
        fmta(
            [[
                \documentclass{article}

                % Custom command for the course name
                \newcommand{\coursename}[1]{\def\@coursename{#1}}
                \newcommand{\getcoursename}{\@coursename}
                \coursename{<>}

                % Title setup
                \title{<>}
                \author{Romain Malice}
                \date{\today}

                % Display course name on the title page
                \makeatletter
                \renewcommand{\maketitle}{
                  \begin{center}
                    {\LARGE \@title\par}
                    \vspace{0.5em}
                    {\large \textbf{Course:} \getcoursename\par}  % Course name line
                    \vspace{0.5em}
                    {\large \@author\par}
                    \vspace{0.5em}
                    {\small \@date\par}
                  \end{center}
                }
                \makeatother

                % Font rendering
                \usepackage[T1]{fontenc}
                \usepackage[utf8]{inputenc}
                \usepackage[<>]{babel}

                % Page format
                \geometry{margin=1in}
                \usepackage{setspace}

                % Math
                \usepackage{amsmath, amssymb, bm}

                % Images
                \usepackage{graphicx}
                \usepackage{caption}

                % Tables
                \usepackage{hyperref}

                % References
                \usepackage{cleveref}

                \begin{document}
                    \maketitle

                    <>
                \end{document}
            ]],
            {
                c(1, {
                    i(1, "Electromagnétisme"),
                    t("Thermodynamique appliquée"),
                    t("Eléments de statistiques"),
                    t("Droit de l'ingénieur"),
                    t("Gestion des combustibles"),
                    t("Mesures électriques"),
                    t("Mathématiques appliquées"),
                }),
                i(2),
                c(3, {
                    t('french'),
                    t('english'),
                }),
                i(0),
            }
        )
    ),
}
