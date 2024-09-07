%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = e
whatClef = "treble"

\include "../Core/My Old Flame - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{My Old Flame - G to E}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/My Old Flame - Ly - G to E for Eb for Standard"}

%}
