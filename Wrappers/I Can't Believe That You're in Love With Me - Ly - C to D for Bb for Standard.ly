%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/I Can't Believe That You're in Love With Me - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Can't Believe That You're in Love With Me - C to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/I Can't Believe That You're in Love With Me - Ly - C to D for Bb for Standard"}

%}
