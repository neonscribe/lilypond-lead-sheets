%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Let's Get Away From It All - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Let's Get Away From It All - Eb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Let's Get Away From It All - Ly - Eb to C for Eb for Standard"}

%}
