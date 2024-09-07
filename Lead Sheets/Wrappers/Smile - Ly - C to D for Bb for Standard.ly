%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Django Fakebook Key"
whatKey = d
whatClef = "treble"

\include "../Core/Smile - Ly Core - F.ly"

useDFBChords = ##t

%{

\phantomsection
\addcontentsline{toc}{section}{Smile - C to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Smile - Ly - C to D for Bb for Standard"}

%}
