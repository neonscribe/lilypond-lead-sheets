%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = c'
whatClef = "treble"

\include "../Core/Falling in Love With Love - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Falling in Love With Love - Bb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Falling in Love With Love - Ly - Bb to C for Bb for Standard"}

%}
