%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Ella Fitzgerald, Anita O'Day Key"
whatKey = ef
whatClef = "treble_8"

\include "../Core/Love Me or Leave Me - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Love Me or Leave Me - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Love Me or Leave Me - Ly - Eb Alto Voice"}

%}
