%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = fs
bassKey = fs
whatClef = "treble"

\include "../Core/Lady Madonna - Ly Core - A.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Lady Madonna - A to F\#}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Lady Madonna - Ly - A to Fs for Eb for Standard"}

%}
