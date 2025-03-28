%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Billie Holiday, Catherine Russell Key"
whatKey = f,
whatClef = "treble_8"

\include "../Core/I Can't Believe That You're in Love With Me - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Can't Believe That You're in Love With Me - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/I Can't Believe That You're in Love With Me - Ly - F Alto Voice"}

%}
