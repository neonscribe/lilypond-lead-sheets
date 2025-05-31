%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Julie London Key"
whatKey = af,
whatClef = "treble_8"

\include "../Core/I'm Glad There Is You - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I'm Glad There Is You - Ab}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/I'm Glad There Is You - Ly - Ab Alto Voice"}

%}
