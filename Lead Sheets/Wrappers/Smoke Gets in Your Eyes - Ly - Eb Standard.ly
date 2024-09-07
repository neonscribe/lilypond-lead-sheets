%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/Smoke Gets in Your Eyes - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Smoke Gets in Your Eyes - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Smoke Gets in Your Eyes - Ly - Eb Standard"}

%}
