%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
whatClef = "bass"

\include "../Core/Sweet and Lovely - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Sweet and Lovely - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Sweet and Lovely - Ly - C Bass for Standard"}

%}
