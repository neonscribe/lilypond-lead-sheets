%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Joni Mitchell, Tierney Sutton Key"
whatKey = bf,
whatClef = "treble_8"

\include "../Core/Don't Worry 'Bout Me - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Don't Worry 'Bout Me - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Don't Worry 'Bout Me - Ly - Bb Alto Voice"}

%}
