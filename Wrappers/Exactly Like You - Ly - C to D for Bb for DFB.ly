%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Django Fakebook Chords"
whatKey = d
whatClef = "treble"

useDFBChords = ##t

\include "../Core/Exactly Like You - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Exactly Like You - C to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Others/Exactly Like You - Ly - C to D for Bb for DFB"}

%}
