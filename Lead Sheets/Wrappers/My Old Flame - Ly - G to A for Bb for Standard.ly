%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/My Old Flame - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{My Old Flame - G to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/My Old Flame - Ly - G to A for Bb for Standard"}

%}
