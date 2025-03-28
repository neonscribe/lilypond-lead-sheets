%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Don't Worry 'Bout Me - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Don't Worry 'Bout Me - Ab to F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Don't Worry 'Bout Me - Ly - Ab to F for Eb for Standard"}

%}
