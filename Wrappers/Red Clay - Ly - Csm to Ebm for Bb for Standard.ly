%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Freddie Hubbard Key"
whatKey = ef
whatClef = "treble"

bassKey = ef

\include "../Core/Red Clay - Ly Core - Cm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Red Clay - C\#m to Ebm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Red Clay - Ly - Csm to Ebm for Bb for Standard"}

%}
