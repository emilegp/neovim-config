local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local rep = require("luasnip.extras").rep

local line_begin = require("luasnip.extras.expand_conditions").line_begin

return {
  s({ trig = "tph", dscr = "LaTeX homework template"},
    fmta(
      [[
        \documentclass[11pt,letterpaper]{article}
        \usepackage[top=3cm, bottom=2cm, left=2cm, right=2cm, columnsep=20pt]{geometry}
        \usepackage{pdfpages}
        \usepackage{graphicx}
        \usepackage{etoolbox}
        \apptocmd{\sloppy}{\hbadness 10000\relax}{}{}
        % \usepackage[numbers]{natbib}
        \usepackage[T1]{fontenc}
        \usepackage{ragged2e}
        \usepackage[french]{babel}
        \usepackage{listings}
        \usepackage{color}
        \usepackage{soul}
        \usepackage[utf8]{inputenc}
        \usepackage[export]{adjustbox}
        \usepackage{caption}
        \usepackage{amsmath}
        \usepackage{amssymb}
        \usepackage{float}
        \usepackage{csquotes}
        \usepackage{fancyhdr}
        \usepackage{wallpaper}
        \usepackage{siunitx}
        \usepackage[indent]{parskip}
        \usepackage{textcomp}
        \usepackage{gensymb}
        \usepackage{multirow}
        \usepackage[hidelinks]{hyperref}
        \usepackage{abstract}
        \renewcommand{\abstractnamefont}{\normalfont\bfseries}
        \renewcommand{\abstracttextfont}{\normalfont\itshape}
        \usepackage{titlesec}
        \titleformat{\section}{\large\bfseries}{\thesection}{1em}{}
        \titleformat{\subsection}{\normalsize\bfseries}{\thesubsection}{1em}{}
        \titleformat{\subsubsection}{\normalsize\bfseries}{\thesubsubsection}{1em}{}

        \usepackage{xcolor}
        \definecolor{codegreen}{rgb}{0,0.6,0}
        \definecolor{codegray}{rgb}{0.5,0.5,0.5}
        \definecolor{codepurple}{rgb}{0.58,0,0.82}
        \definecolor{backcolour}{rgb}{0.95,0.95,0.92}
        \lstdefinestyle{mystyle}{
            backgroundcolor=\color{backcolour},   
            commentstyle=\color{codegreen},
            keywordstyle=\color{magenta},
            numberstyle=\tiny\color{codegray},
            stringstyle=\color{codepurple},
            basicstyle=\ttfamily\footnotesize,
            breakatwhitespace=false,         
            breaklines=true,                 
            captionpos=b,                    
            keepspaces=true,                 
            numbers=left,                    
            numbersep=5pt,                  
            showspaces=false,                
            showstringspaces=false,
            showtabs=false,                  
            tabsize=2
        }
        \lstset{style=mystyle}

        
        \usepackage[most]{tcolorbox}
        \newtcolorbox{note}[1][]{
          enhanced jigsaw,
          borderline west={2pt}{0pt}{black},
          sharp corners,
          boxrule=0pt, 
          fonttitle={\large\bfseries},
          coltitle={black},
          title={Note:\ },
          attach title to upper,
          #1
        }
        %----------------------------------------------------

        \setlength{\parindent}{0pt}
        \DeclareCaptionLabelFormat{mycaptionlabel}{#1 #2}
        \captionsetup[figure]{labelsep=colon}
        \captionsetup{labelformat=mycaptionlabel}
        \captionsetup[figure]{name={Figure }}
        \newcommand{\inlinecode}{\normalfont\texttt}
        \usepackage{enumitem}
        \setlist[itemize]{label=\textbullet}

        \begin{document}
        \begin{titlepage}
        \center

        \begin{figure}
            \ThisULCornerWallPaper{.4}{Polytechnique_signature-RGB-gauche_FR.png}
        \end{figure}
        \vspace*{2 cm}

        \textsc{\Large \textbf{PHS???? --} Nom du cours}\\[0.5cm]
        \large{\textbf{Équipe : ??}}\\[1.5cm]

        \rule{\linewidth}{0.5mm} \\[0.5cm]
        \Large{\textbf{Titre}} \\[0.2cm]
        \text{Sous-titre}\\
        \rule{\linewidth}{0.2mm} \\[2.3cm]

        \large{\textbf{Présenté à}\\
          Professeur Prof\\[2.5cm]
          \textbf{Par :}\\
          Émile \textbf{Guertin-Picard} (2208363)\\[3cm]}

        \large{\today\\
        Département de Génie Physique\\
        Polytechnique Montréal\\}

        \end{titlepage}

        %----------------------------------------------------

        \tableofcontents
        \pagenumbering{roman}
        \newpage

        \pagestyle{fancy}
        \setlength{\headheight}{14pt}
        \renewcommand{\headrulewidth}{0pt}
        \fancyfoot[R]{\thepage}

        \pagestyle{fancy}
        \fancyhf{}
        \renewcommand{\headrulewidth}{1pt}
        \fancyhead[L]{\textbf{<>}}
        \fancyhead[C]{<>}
        \fancyhead[R]{<>}
        \fancyfoot[R]{\thepage}

        \pagenumbering{arabic}
        \setcounter{page}{1}

        %----------------------------------------------------

        \section{<>}

        <>

        \clearpage

        % \bibliographystyle{unsrtnat}
        % \bibliography{My_Library}

        \end{document}
      ]],
      {
        i(1, "cours/sujet"),
        i(2, "titre"),
        i(3, "date"),
        i(4, "section title"),
        i(0),
      }
    ),
    { condition = line_begin }
  ),

  s({ trig = "tpn", dscr = "LaTeX notes template"},
    fmta(
      [[
        \documentclass[11pt,letterpaper]{article}
        \usepackage[top=3cm, bottom=2cm, left=2cm, right=2cm, columnsep=20pt]{geometry}
        \usepackage{graphicx}
        \usepackage[numbers]{natbib}
        \usepackage[T1]{fontenc}
        \usepackage{ragged2e}
        \usepackage[french]{babel}
        \usepackage{listings}
        \usepackage{color}
        \usepackage{soul}
        \usepackage[utf8]{inputenc}
        \usepackage[export]{adjustbox}
        \usepackage{caption}
        \usepackage{amsmath}
        \usepackage{amssymb}
        \usepackage{float}
        \usepackage{csquotes}
        \usepackage{fancyhdr}
        \usepackage{wallpaper}
        \usepackage{siunitx}
        \usepackage[indent]{parskip}
        \usepackage{textcomp}
        \usepackage{gensymb}
        \usepackage{multirow}
        \usepackage[hidelinks]{hyperref}
        \usepackage{silence}
        \usepackage{abstract}
        \renewcommand{\abstractnamefont}{\normalfont\bfseries}
        \renewcommand{\abstracttextfont}{\normalfont\itshape}
        \usepackage{titlesec}
        \titleformat{\section}{\large\bfseries}{\thesection}{1em}{}
        \titleformat{\subsection}{\normalsize\bfseries}{\thesubsection}{1em}{}
        \titleformat{\subsubsection}{\normalsize\bfseries}{\thesubsubsection}{1em}{}
        \setlength{\parindent}{0pt}
        \DeclareCaptionLabelFormat{mycaptionlabel}{#1 #2}
        \captionsetup[figure]{labelsep=colon}
        \captionsetup{labelformat=mycaptionlabel}
        \captionsetup[figure]{name={Figure }}
        \WarningFilter{caption}{Unused \captionsetup[figure]}
        \newcommand{\inlinecode}{\normalfont\texttt}
        \usepackage{enumitem}
        \setlist[itemize]{label=\textbullet}

        \usepackage{xcolor}
        \definecolor{codegreen}{rgb}{0,0.6,0}
        \definecolor{codegray}{rgb}{0.5,0.5,0.5}
        \definecolor{codepurple}{rgb}{0.58,0,0.82}
        \definecolor{backcolour}{rgb}{0.95,0.95,0.92}
        \lstdefinestyle{mystyle}{
            backgroundcolor=\color{backcolour},   
            commentstyle=\color{codegreen},
            keywordstyle=\color{magenta},
            numberstyle=\tiny\color{codegray},
            stringstyle=\color{codepurple},
            basicstyle=\ttfamily\footnotesize,
            breakatwhitespace=false,         
            breaklines=true,                 
            captionpos=b,                    
            keepspaces=true,                 
            numbers=left,                    
            numbersep=5pt,                  
            showspaces=false,                
            showstringspaces=false,
            showtabs=false,                  
            tabsize=2
        }
        \lstset{style=mystyle}

        \usepackage[most]{tcolorbox}
        \newtcolorbox{note}[1][]{
          enhanced jigsaw,
          borderline west={2pt}{0pt}{black},
          sharp corners,
          boxrule=0pt, 
          fonttitle={\large\bfseries},
          coltitle={black},
          title={Note:\ },
          attach title to upper,
          #1
        }

        \begin{document}
        \pagestyle{fancy}
        \setlength{\headheight}{14pt}
        \renewcommand{\headrulewidth}{0pt}
        \fancyfoot[R]{\thepage}
        \pagestyle{fancy}
        \fancyhf{}
        \renewcommand{\headrulewidth}{1pt}
        \thispagestyle{fancy}
        \fancyhead[L]{\textbf{<>}}
        \fancyhead[C]{<>}
        \fancyhead[R]{\today}
        \fancyfoot[R]{\thepage}
        \pagenumbering{arabic}
        \setcounter{page}{1}
        %----------------------------------------------------

        \section{<>}

        <>

        \end{document}
      ]],
      {
        i(1, "cours/sujet"),
        i(2, "titre"),
        i(3, "section"),
        i(0),
      }
    ),
    { condition = line_begin }
  ),

  s({ trig = "tpp", dscr = "LaTeX project template"},
    fmta(
      [[
        \documentclass[11pt,letterpaper]{article}
        \usepackage[top=3cm, bottom=2cm, left=2cm, right=2cm, columnsep=20pt]{geometry}
        \usepackage{pdfpages}
        \usepackage{graphicx}
        \usepackage{etoolbox}
        \apptocmd{\sloppy}{\hbadness 10000\relax}{}{}
        % \usepackage[numbers]{natbib}
        \usepackage[T1]{fontenc}
        \usepackage{ragged2e}
        \usepackage[french]{babel}
        \usepackage{listings}
        \usepackage{color}
        \usepackage{soul}
        \usepackage[utf8]{inputenc}
        \usepackage[export]{adjustbox}
        \usepackage{caption}
        \usepackage{amsmath}
        \usepackage{amssymb}
        \usepackage{float}
        \usepackage{csquotes}
        \usepackage{fancyhdr}
        \usepackage{wallpaper}
        \usepackage{siunitx}
        \usepackage[indent]{parskip}
        \usepackage{textcomp}
        \usepackage{gensymb}
        \usepackage{multirow}
        \usepackage[hidelinks]{hyperref}
        \usepackage{abstract}
        \renewcommand{\abstractnamefont}{\normalfont\bfseries}
        \renewcommand{\abstracttextfont}{\normalfont\itshape}
        \usepackage{titlesec}
        \titleformat{\section}{\large\bfseries}{\thesection}{1em}{}
        \titleformat{\subsection}{\normalsize\bfseries}{\thesubsection}{1em}{}
        \titleformat{\subsubsection}{\normalsize\bfseries}{\thesubsubsection}{1em}{}

        \usepackage{xcolor}
        \definecolor{codegreen}{rgb}{0,0.6,0}
        \definecolor{codegray}{rgb}{0.5,0.5,0.5}
        \definecolor{codepurple}{rgb}{0.58,0,0.82}
        \definecolor{backcolour}{rgb}{0.95,0.95,0.92}
        \lstdefinestyle{mystyle}{
            backgroundcolor=\color{backcolour},   
            commentstyle=\color{codegreen},
            keywordstyle=\color{magenta},
            numberstyle=\tiny\color{codegray},
            stringstyle=\color{codepurple},
            basicstyle=\ttfamily\footnotesize,
            breakatwhitespace=false,         
            breaklines=true,                 
            captionpos=b,                    
            keepspaces=true,                 
            numbers=left,                    
            numbersep=5pt,                  
            showspaces=false,                
            showstringspaces=false,
            showtabs=false,                  
            tabsize=2
        }
        \lstset{style=mystyle}

        \usepackage[most]{tcolorbox}
        \newtcolorbox{note}[1][]{
          enhanced jigsaw,
          borderline west={2pt}{0pt}{black},
          sharp corners,
          boxrule=0pt, 
          fonttitle={\large\bfseries},
          coltitle={black},
          title={Note:\ },
          attach title to upper,
          #1
        }

        %----------------------------------------------------

        \setlength{\parindent}{0pt}
        \DeclareCaptionLabelFormat{mycaptionlabel}{#1 #2}
        \captionsetup[figure]{labelsep=colon}
        \captionsetup{labelformat=mycaptionlabel}
        \captionsetup[figure]{name={Figure }}
        \newcommand{\inlinecode}{\normalfont\texttt}
        \usepackage{enumitem}
        \setlist[itemize]{label=\textbullet}

        \begin{document}
        \begin{titlepage}
        \center

        \begin{figure}
            \ThisULCornerWallPaper{.4}{Polytechnique_signature-RGB-gauche_FR.png}
        \end{figure}
        \vspace*{2 cm}

        \textsc{\Large \textbf{PHS???? --} Nom du cours}\\[0.5cm]
        \large{\textbf{Équipe : ??}}\\[1.5cm]

        \rule{\linewidth}{0.5mm} \\[0.5cm]
        \Large{\textbf{Titre}} \\[0.2cm]
        \text{Sous-titre}\\
        \rule{\linewidth}{0.2mm} \\[2.3cm]

        \large{\textbf{Présenté à}\\
          Professeur Prof\\[2.5cm]
          \textbf{Par :}\\
          Émile \textbf{Guertin-Picard} (2208363)\\[3cm]}

        \large{\today\\
        Département de Génie Physique\\
        Polytechnique Montréal\\}

        \end{titlepage}

        %----------------------------------------------------

        \tableofcontents
        \pagenumbering{roman}
        \newpage

        \pagestyle{fancy}
        \setlength{\headheight}{14pt}
        \renewcommand{\headrulewidth}{0pt}
        \fancyfoot[R]{\thepage}

        \pagestyle{fancy}
        \fancyhf{}
        \renewcommand{\headrulewidth}{1pt}
        \fancyhead[L]{\textbf{<>}}
        \fancyhead[C]{<>}
        \fancyhead[R]{<>}
        \fancyfoot[R]{\thepage}

        \pagenumbering{arabic}
        \setcounter{page}{1}

        %----------------------------------------------------

        \section{<>}

        <>

        \clearpage

        % \bibliographystyle{unsrtnat}
        % \bibliography{My_Library}

        \end{document}
      ]],
      {
        i(1, "cours/sujet"),
        i(2, "titre"),
        i(3, "date"),
        i(4, "section"),
        i(0),
      }
    ),
    { condition = line_begin }
  ),
}
