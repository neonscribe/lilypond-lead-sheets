%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Moanin' - Ly Core - Fm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Moanin' - Fm to Gm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Moanin' - Ly - Fm to Gm for Bb for Standard"}

%}
