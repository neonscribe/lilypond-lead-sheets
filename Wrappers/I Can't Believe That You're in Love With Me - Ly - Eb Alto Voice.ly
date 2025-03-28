%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Ella Fitzgerald, Dinah Washington, Diane Schuur Key"
whatKey = ef,
whatClef = "treble_8"

\include "../Core/I Can't Believe That You're in Love With Me - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Can't Believe That You're in Love With Me - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/I Can't Believe That You're in Love With Me - Ly - Eb Alto Voice"}

%}
