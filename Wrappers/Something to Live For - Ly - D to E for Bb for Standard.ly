%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = e
whatClef = "treble"

\include "../Core/Something to Live For - Ly Core - D.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Something to Live For - D to E}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Something to Live For - Ly - D to E for Bb for Standard"}

%}
