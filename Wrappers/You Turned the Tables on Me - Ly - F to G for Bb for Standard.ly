%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/You Turned the Tables on Me - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{You Turned the Tables on Me - F to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/You Turned the Tables on Me - Ly - F to G for Bb for Standard"}

%}
