%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = c'
whatClef = "treble"

\include "../Core/One Note Samba - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{One Note Samba - Bb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/One Note Samba - Ly - Bb to C for Bb for Standard"}

%}
