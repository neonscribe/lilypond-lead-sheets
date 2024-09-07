%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = g'
whatClef = "treble"

\include "../Core/One Note Samba - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{One Note Samba - Bb to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/One Note Samba - Ly - Bb to G for Eb for Standard"}

%}
