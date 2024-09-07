%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/Blues in the Closet - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Blues in the Closet - G to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Blues in the Closet - Ly - G to A for Bb for Standard"}

%}
