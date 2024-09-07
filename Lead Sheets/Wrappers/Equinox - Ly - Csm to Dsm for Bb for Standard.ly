%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = ds
bassKey = ds'
whatClef = "treble"

\include "../Core/Equinox - Ly Core - Csm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Equinox - C♯m to D♯m}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Equinox - Ly - Csm to Dsm for Bb for Standard"}

%}
