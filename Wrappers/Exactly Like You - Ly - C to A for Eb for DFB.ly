%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Django Fakebook Chords"
whatKey = a
whatClef = "treble"

useDFBChords = ##t

\include "../Core/Exactly Like You - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Exactly Like You - C to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Others/Exactly Like You - Ly - C to A for Eb for DFB"}

%}
