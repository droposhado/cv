\documentclass[11pt, a4paper]{russell}

\geometry{left=1.4cm, top=.8cm, right=1.4cm, bottom=1.8cm, footskip=.5cm}

\fontdir[fonts/]

\colorlet{russell}{russell-black}

\setbool{acvSectionColorHighlight}{true}

\renewcommand{\acvHeaderSocialSep}{\quad\textbar\quad}

\name{${ name.split(" ")[0] }}{${ " ".join(name.split(" ")[1:]) }}

\homepage{${ site }} 
\email{${ email }}
\github{github.com/${ github }}
\linkedin{linkedin.com/in/${ linkedin }}

\begin{document}

\makecvheader

\cvsection{${ i18n["profile"][lang].capitalize() }}
\begin{cvparagraph}

${ description }

\textbf{${ i18n["interests"][lang].capitalize() }}: ${ ", ".join(interests) }
\end{cvparagraph}

\cvsection{${ i18n["education"][lang].capitalize() }}
\begin{cventries}
% for e in education:

<%
    if e["end"] is None or e["end"] == "":
        e_end = i18n["current"][lang].capitalize()

    else:
        e_end = e["end"][0:4]

%>

  \cventry
    {${ e["university"] }}
    {${ e["title"] }}
    {${ e["location"] }}
    {${ e["start"][0:4] } - ${ e_end }}
    {
      \begin{cvitems}
        \item {${ e["thesis"] }}
      \end{cvitems}
    }

% endfor
\end{cventries}

\cvsection{${ i18n["experiences"][lang].capitalize() }}
\begin{cventries}
% for j in jobs:

<%
    if j["end"] is None or j["end"] == "":
        j_end = i18n["current"][lang].capitalize()

    else:
        j_end = j["end"][0:7]

%>

  \cventry
    {${ j["employer"] }}
    {${ j["title"].capitalize() }}
    {}
    {${ j["start"][0:7]} - ${ j_end } }
    {
      \begin{cvitems}
        % for d in j["description"]:
          \item {${ d.replace("#", "\#") }}
        % endfor
      \end{cvitems}
    }

% endfor
\end{cventries}

\newpage

\cvsection{${ i18n["projects"][lang].capitalize() }}
\begin{cvprojects}
% for p in projects:

  \cvproject
    {\href{${ p["url"] }}{${ p["name"] }}}
    {${ p["description"] }}

% endfor
\end{cvprojects}

\cvsection{${ i18n["courses"][lang].capitalize() }}
\begin{cvcourses}
% for c in courses:

  \cvcourse
    {${ c["name"] }}
    {${ c["hours"] }h, ${ c["organization_name"] }}
    {\href{${ c["certificate_url"] }}{${ i18n["certificate"][lang] }}}
    {${ c["end"][0:4] }}

% endfor
\end{cvcourses}


\end{document}

