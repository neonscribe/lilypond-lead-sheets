%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Someone to Watch Over Me - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Someone to Watch Over Me - Eb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Someone to Watch Over Me - Ly - Eb to C for Eb for Standard"}

%}
