%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = bf
whatClef = "treble"

\include "../Core/Falling in Love With Love Swing - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Falling in Love With Love (4/4) - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Falling in Love With Love Swing - Ly - Bb Standard"}

%}
