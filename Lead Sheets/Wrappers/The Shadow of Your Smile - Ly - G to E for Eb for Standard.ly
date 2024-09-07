%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = e'
whatClef = "treble"

\include "../Core/The Shadow of Your Smile - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The Shadow of Your Smile - G to E}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/The Shadow of Your Smile - Ly - G to E for Eb for Standard"}

%}
