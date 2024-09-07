%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Easier Key"
whatKey = d
bassKey = d'
whatClef = "treble"

\include "../Core/Equinox - Ly Core - Csm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Equinox - Cm to Dm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Equinox - Ly - Cm to Dm for Bb for Standard"}

%}
