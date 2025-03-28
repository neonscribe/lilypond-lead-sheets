%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = af
whatClef = "treble"

\include "../Core/Don't Worry 'Bout Me - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Don't Worry 'Bout Me - Ab}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Don't Worry 'Bout Me - Ly - Ab Standard"}

%}
