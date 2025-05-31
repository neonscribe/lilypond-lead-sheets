%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Time on My Hands - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Time on My Hands - F to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Time on My Hands - Ly - F to G for Bb for Standard"}

%}
