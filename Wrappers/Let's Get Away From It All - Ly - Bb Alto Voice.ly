%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Jo Stafford Key"
whatKey = bf,
whatClef = "treble_8"

\include "../Core/Let's Get Away From It All - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Let's Get Away From It All - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Let's Get Away From It All - Ly - Bb Alto Voice"}

%}
