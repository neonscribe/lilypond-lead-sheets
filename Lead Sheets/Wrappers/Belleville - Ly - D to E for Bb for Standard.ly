%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = e
whatClef = "treble"

\include "../Core/Belleville - Ly Core - D.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Belleville - D to E}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Belleville - Ly - D to E for Bb for Standard"}

%}
