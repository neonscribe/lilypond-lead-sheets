%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = g
bassKey = g
whatClef = "treble"

\include "../Core/Django - Ly Core - Fm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Django - Fm to Gm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Django - Ly - Fm to Gm for Bb for Standard"}

%}
