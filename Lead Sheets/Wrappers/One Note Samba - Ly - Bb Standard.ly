%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = bf
whatClef = "treble"

\include "../Core/One Note Samba - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{One Note Samba - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/One Note Samba - Ly - Bb Standard"}

%}
