%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = af,
whatClef = "bass"
Title = "Spring Is Here (Bill Evans Chords)"
TempoName = "Slow Ballad [Bill Evans 1960]"
TempoBPM = 57

useBillEvansChords = ##t

\include "../Core/Spring Is Here - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Spring Is Here (Bill Evans Chords) - Ab Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Spring Is Here Bill Evans - Ly - Ab Bass for Standard"}

%}
