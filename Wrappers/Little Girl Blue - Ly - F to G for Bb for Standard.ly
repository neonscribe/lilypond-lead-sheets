%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Little Girl Blue - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Little Girl Blue - F to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Little Girl Blue - Ly - F to G for Bb for Standard"}

%}
