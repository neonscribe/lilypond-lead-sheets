%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/When Lights Are Low - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{When Lights Are Low - Eb to F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/When Lights Are Low - Ly - Eb to F for Bb for Standard"}

%}
