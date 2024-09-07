%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = d
whatClef = "treble"

showLyrics = ##t
printNoteNames = ##f

\include "../Core/Bernie's Tune - Ly Core - Dm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Bernie's Tune Lyrics - Dm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bernie's Tune Lyrics - Ly - Dm Standard"}

%}
