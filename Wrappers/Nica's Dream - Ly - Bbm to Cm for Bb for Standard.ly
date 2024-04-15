%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = c'
whatClef = "treble"

\include "../Core/Nica's Dream - Ly Core - Bbm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Nica's Dream - Bbm to Cm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Nica's Dream - Ly - Bbm to Cm for Bb for Standard"}

%}
