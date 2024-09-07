%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/Jazz Blues in G - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Jazz Blues in G - G to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Jazz Blues in G - Ly - G to A for Bb for Standard"}

%}
