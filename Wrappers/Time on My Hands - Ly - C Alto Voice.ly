%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Billy Holiday Key"
whatKey = c
whatClef = "treble_8"

\include "../Core/Time on My Hands - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Time on My Hands - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Time on My Hands - Ly - C Alto Voice"}

%}
