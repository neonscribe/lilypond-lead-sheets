%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = a,
whatClef = "treble"

\include "../Core/I Can't Believe That You're in Love With Me - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Can't Believe That You're in Love With Me - C to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/I Can't Believe That You're in Love With Me - Ly - C to A for Eb for Standard"}

%}
