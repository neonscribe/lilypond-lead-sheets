%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = d'
bassKey = d
whatClef = "treble"

\include "../Core/Django - Ly Core - Fm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Django - Fm to Dm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Django - Ly - Fm to Dm for Eb for Standard"}

%}
