%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = bf
whatClef = "treble"

\include "../Core/Straighten Up and Fly Right - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Straighten Up and Fly Right - Ab to Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Straighten Up and Fly Right - Ly - Ab to Bb for Bb for Standard"}

%}
