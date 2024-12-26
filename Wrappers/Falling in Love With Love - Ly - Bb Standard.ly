%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = bf
whatClef = "treble"

\include "../Core/Falling in Love With Love - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Falling in Love With Love - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Falling in Love With Love - Ly - Bb Standard"}

%}
