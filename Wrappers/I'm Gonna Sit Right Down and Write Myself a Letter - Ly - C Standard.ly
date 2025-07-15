%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/I'm Gonna Sit Right Down and Write Myself a Letter - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I'm Gonna Sit Right Down and Write Myself a Letter - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/I'm Gonna Sit Right Down and Write Myself a Letter - Ly - C Standard"}

%}
