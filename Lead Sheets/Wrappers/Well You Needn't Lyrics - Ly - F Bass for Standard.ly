%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
whatClef = "bass"

showLyrics = ##t

\include "../Core/Well You Needn't - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Well You Needn't Lyrics - F Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Well You Needn't Lyrics - Ly - F Bass for Standard"}

%}
