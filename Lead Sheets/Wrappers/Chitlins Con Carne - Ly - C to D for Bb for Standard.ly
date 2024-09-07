%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = d
bassKey = d
whatClef = "treble"

\include "../Core/Chitlins Con Carne - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Chitlins Con Carne - C to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Chitlins Con Carne - Ly - C to D for Bb for Standard"}

%}
