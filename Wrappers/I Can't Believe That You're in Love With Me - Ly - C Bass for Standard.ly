%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
whatClef = "bass"

\include "../Core/I Can't Believe That You're in Love With Me - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Can't Believe That You're in Love With Me - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/I Can't Believe That You're in Love With Me - Ly - C Bass for Standard"}

%}
