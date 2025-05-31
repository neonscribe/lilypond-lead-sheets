%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/I Found a Million Dollar Baby - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Found a Million Dollar Baby (In a Five and Ten Cent Store) - F to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/I Found a Million Dollar Baby - Ly - F to G for Bb for Standard"}

%}
