%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/Back in Your Own Backyard - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Back in Your Own Backyard - G to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Back in Your Own Backyard - Ly - G to A for Bb for Standard"}

%}
