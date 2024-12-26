%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Easier Key"
whatKey = d
whatClef = "treble"

bassKey = d

\include "../Core/Red Clay - Ly Core - Cm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Red Clay - Cm to Dm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Red Clay - Ly - Cm to Dm for Bb for Standard"}

%}
