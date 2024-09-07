%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = cs
bassKey = cs'
whatClef = "treble"

\include "../Core/Equinox - Ly Core - Csm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Equinox - C♯m}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Equinox - Ly - Csm Standard"}

%}
