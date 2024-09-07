%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/I Love You - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Love You - F to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/I Love You - Ly - F to G for Bb for Standard"}

%}
