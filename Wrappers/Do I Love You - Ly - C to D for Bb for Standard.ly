%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/Do I Love You - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Do I Love You - C to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Do I Love You - Ly - C to D for Bb for Standard"}

%}
