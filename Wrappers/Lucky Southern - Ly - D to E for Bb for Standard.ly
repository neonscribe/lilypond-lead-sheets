%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = e,
whatClef = "treble"

\include "../Core/Lucky Southern - Ly Core - D.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Lucky Southern - D to E}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Lucky Southern - Ly - D to E for Bb for Standard"}

%}
