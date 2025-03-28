%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Billie Holiday Key"
whatKey = c
whatClef = "treble_8"

\include "../Core/Don't Worry 'Bout Me - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Don't Worry 'Bout Me - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Don't Worry 'Bout Me - Ly - C Alto Voice"}

%}
