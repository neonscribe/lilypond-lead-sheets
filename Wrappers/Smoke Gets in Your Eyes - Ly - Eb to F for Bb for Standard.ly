%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Smoke Gets in Your Eyes - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Smoke Gets in Your Eyes - Eb to F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Smoke Gets in Your Eyes - Ly - Eb to F for Bb for Standard"}

%}
