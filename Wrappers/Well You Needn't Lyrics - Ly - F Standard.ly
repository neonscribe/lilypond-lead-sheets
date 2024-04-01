%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

showLyrics = ##t

\include "../Core/Well You Needn't - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Well You Needn't Lyrics - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Well You Needn't Lyrics - Ly - F Standard"}

%}
