%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = e
whatClef = "treble"

\include "../Core/Tune Up - Ly Core - D.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Tune Up - D to E}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Tune Up - Ly - D to E for Bb for Standard"}

%}
