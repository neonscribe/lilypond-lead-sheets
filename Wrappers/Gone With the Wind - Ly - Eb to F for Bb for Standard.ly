%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Gone With the Wind - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Gone With the Wind - Eb to F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Gone With the Wind - Ly - Eb to F for Bb for Standard"}

%}
