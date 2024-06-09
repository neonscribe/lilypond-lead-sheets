%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Django Fakebook Chords"
whatKey = c,
whatClef = "bass"

useDFBChords = ##t

\include "../Core/Exactly Like You - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Exactly Like You - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Others/Exactly Like You - Ly - C Bass for DFB"}

%}
