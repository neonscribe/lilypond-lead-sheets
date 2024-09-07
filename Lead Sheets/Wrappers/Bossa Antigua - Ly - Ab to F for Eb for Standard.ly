%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = f'
whatClef = "treble"

\include "../Core/Bossa Antigua - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Bossa Antigua - Ab to F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Bossa Antigua - Ly - Ab to F for Eb for Standard"}

%}
