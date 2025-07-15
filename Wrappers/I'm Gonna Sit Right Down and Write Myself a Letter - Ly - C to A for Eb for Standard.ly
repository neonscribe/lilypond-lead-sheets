%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = a,
whatClef = "treble"

\include "../Core/I'm Gonna Sit Right Down and Write Myself a Letter - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I'm Gonna Sit Right Down and Write Myself a Letter - C to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/I'm Gonna Sit Right Down and Write Myself a Letter - Ly - C to A for Eb for Standard"}

%}
