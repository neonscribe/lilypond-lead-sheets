%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = g'
whatClef = "treble"

\include "../Core/Falling in Love With Love - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Falling in Love With Love - Bb to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Falling in Love With Love - Ly - Bb to G for Eb for Standard"}

%}
