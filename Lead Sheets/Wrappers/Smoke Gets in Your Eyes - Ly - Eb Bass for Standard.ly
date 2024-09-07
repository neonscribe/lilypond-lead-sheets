%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = ef,
whatClef = "bass"

\include "../Core/Smoke Gets in Your Eyes - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Smoke Gets in Your Eyes - Eb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Smoke Gets in Your Eyes - Ly - Eb Bass for Standard"}

%}
