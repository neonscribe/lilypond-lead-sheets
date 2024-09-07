%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = d,
whatClef = "bass"

showLyrics = ##t
printNoteNames = ##f

#(set-global-staff-size 18)

\include "../Core/Bernie's Tune - Ly Core - Dm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Bernie's Tune Lyrics - Dm Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Bernie's Tune Lyrics - Ly - Dm Bass for Standard"}

%}
