%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/I Want to Be Happy - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Want to Be Happy - C to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/I Want to Be Happy - Ly - C to D for Bb for Standard"}

%}
