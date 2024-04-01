%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/S Wonderful - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{'S Wonderful - Eb to F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/S Wonderful - Ly - Eb to F for Bb for Standard"}

%}
