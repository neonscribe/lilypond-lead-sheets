%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/I Can't Believe That You're in Love With Me - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Can't Believe That You're in Love With Me - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/I Can't Believe That You're in Love With Me - Ly - C Standard"}

%}
