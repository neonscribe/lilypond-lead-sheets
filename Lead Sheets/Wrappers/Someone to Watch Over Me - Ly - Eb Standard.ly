%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/Someone to Watch Over Me - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Someone to Watch Over Me - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Someone to Watch Over Me - Ly - Eb Standard"}

%}
