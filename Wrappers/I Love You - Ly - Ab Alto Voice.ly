%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Julie London Key"
whatKey = af,
whatClef = "treble_8"

\include "../Core/I Love You - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Love You - Ab}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/I Love You - Ly - Ab Alto Voice"}

%}
