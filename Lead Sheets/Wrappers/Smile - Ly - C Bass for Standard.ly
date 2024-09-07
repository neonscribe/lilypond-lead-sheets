%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Django Fakebook Key"
whatKey = c,
whatClef = "bass"

useDFBChords = ##t

\include "../Core/Smile - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Smile - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Smile - Ly - C Bass for Standard"}

%}
