%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/I'm Getting Sentimental Over You - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I'm Getting Sentimental Over You - F to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/I'm Getting Sentimental Over You - Ly - F to G for Bb for Standard"}

%}
