%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/Exactly Like You - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Exactly Like You - C to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Exactly Like You - Ly - C to D for Bb for Standard"}

%}
