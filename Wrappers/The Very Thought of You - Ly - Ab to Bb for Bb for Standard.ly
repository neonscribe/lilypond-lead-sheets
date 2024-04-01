%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = bf
whatClef = "treble"

\include "../Core/The Very Thought of You - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The Very Thought of You - Ab to Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/The Very Thought of You - Ly - Ab to Bb for Bb for Standard"}

%}
