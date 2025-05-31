%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Moment's Notice - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Moment's Notice - Eb to F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Moment's Notice - Ly - Eb to F for Bb for Standard"}

%}
