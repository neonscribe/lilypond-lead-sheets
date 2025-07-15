%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = b
bassKey = b
whatClef = "treble"

\include "../Core/Lady Madonna - Ly Core - A.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Lady Madonna - A to B}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Lady Madonna - Ly - A to B for Bb for Standard"}

%}
