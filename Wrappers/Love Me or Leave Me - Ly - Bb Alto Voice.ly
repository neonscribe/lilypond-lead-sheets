%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Billie Holiday Key"
whatKey = bf,
whatClef = "treble_8"

\include "../Core/Love Me or Leave Me - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Love Me or Leave Me - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Love Me or Leave Me - Ly - Bb Alto Voice"}

%}
