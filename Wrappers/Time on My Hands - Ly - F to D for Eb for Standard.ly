%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = d'
whatClef = "treble"

\include "../Core/Time on My Hands - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Time on My Hands - F to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Time on My Hands - Ly - F to D for Eb for Standard"}

%}
