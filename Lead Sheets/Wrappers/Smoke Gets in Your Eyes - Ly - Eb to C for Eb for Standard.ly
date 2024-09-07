%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = c'
whatClef = "treble"

\include "../Core/Smoke Gets in Your Eyes - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Smoke Gets in Your Eyes - Eb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Smoke Gets in Your Eyes - Ly - Eb to C for Eb for Standard"}

%}
