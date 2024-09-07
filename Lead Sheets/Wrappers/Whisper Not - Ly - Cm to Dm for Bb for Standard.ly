%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/Whisper Not - Ly Core - Cm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Whisper Not - Cm to Dm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Whisper Not - Ly - Cm to Dm for Bb for Standard"}

%}
