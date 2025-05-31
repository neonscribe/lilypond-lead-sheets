%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Time on My Hands - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Time on My Hands - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Time on My Hands - Ly - F Standard"}

%}
