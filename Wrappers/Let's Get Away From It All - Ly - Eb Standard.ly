%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/Let's Get Away From It All - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Let's Get Away From It All - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Let's Get Away From It All - Ly - Eb Standard"}

%}
