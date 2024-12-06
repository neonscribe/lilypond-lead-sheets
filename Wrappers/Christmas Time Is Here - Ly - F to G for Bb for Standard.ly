%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Christmas Time Is Here - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Christmas Time Is Here - F to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Christmas Time Is Here - Ly - F to G for Bb for Standard"}

%}
