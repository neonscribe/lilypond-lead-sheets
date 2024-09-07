%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Django Fakebook Key"
whatKey = a
whatClef = "treble"

useDFBChords = ##t

\include "../Core/Smile - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Smile - C to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Smile - Ly - C to A for Eb for Standard"}

%}
