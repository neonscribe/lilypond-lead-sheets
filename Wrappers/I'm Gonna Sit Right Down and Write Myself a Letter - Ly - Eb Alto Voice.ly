%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Madeleine Peyroux Key"
whatKey = ef,
whatClef = "treble_8"

\include "../Core/I'm Gonna Sit Right Down and Write Myself a Letter - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I'm Gonna Sit Right Down and Write Myself a Letter - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/I'm Gonna Sit Right Down and Write Myself a Letter - Ly - Eb Alto Voice"}

%}
