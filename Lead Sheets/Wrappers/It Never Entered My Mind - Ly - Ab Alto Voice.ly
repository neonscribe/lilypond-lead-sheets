%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Alto Voice Key"
whatKey = af
whatClef = "treble"

\include "../Core/It Never Entered My Mind - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{It Never Entered My Mind - Ab}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/It Never Entered My Mind - Ly - Ab Alto Voice"}

%}
