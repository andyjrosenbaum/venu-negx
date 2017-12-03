\version "2.18.2"  % necessary for upgrading to future LilyPond versions.

% ===== endkonduko =======

% Andy Rosenbaum
% andyjrosenbaum@gmail.com

\header {
    title = "Venu neĝ'"
    subtitle = "(\"Let It Snow\" en Esperanto)"
    composer = "Sammy Cahn & Jule Styne, 1945"
    arranger = "Tradukis kaj aranĝis Andreo ROSENBAUM, decembro 2017"
    date = "decembro 2017"
}

% =========== parto A =============
% "La vetero ekstere aĉas ..."

muzikoA = \relative d' {
    \partial 4 a8 a8 | a'8 a g4 fis4 e8 d~ | d a4. r4 
    a8 a | e'4. d8 e4. d8 | cis4 a r 
    a | b'8 b a a g4 fis8 e~ | e2 r8 
    cis'4 b8 | a4 a8 g fis4 fis8 e | d2 r4 
}

laVeteroEkstereAcxasVortoj = \lyricmode { 
    La ve -- | te -- ro ek -- ster -- e | aĉ -- as, 
    sed la | faj -- ro al ni | pla -- ĉas. 
    Ne -- | ni -- en de -- vas i -- ri ni, 
    ve -- nu | neĝ' ve -- nu neĝ' ve -- nu | neĝ'! 
}

vortojA = {
    \laVeteroEkstereAcxasVortoj
}

% =========== parto B =============
% "Neniu povas ĝin ĉesigi ... "

muzikoB = \relative d' {
    a4 | a'8 a g g fis4 e8 d~ | d a4. r4 
    a8 a | e'4. d8 e4. d8 | cis4 a r 
    a | b'8 b a4 g4 fis8 e~ | e2 r8 
    cis'4 b8 | a4 a8 g fis4 fis8 e | d2 r4 
}

neniuPovasGxinCxesigiVortoj = \lyricmode {
    Ne -- | ni -- u po -- vas ĝin ĉe -- | si -- gi,
    jen ma -- | i -- zo por krev -- | i -- gi. 
    Ni | res -- tas en du -- on -- lum',
    ve -- nu | neĝ' ve -- nu neĝ' ve -- nu | neĝ'! 
}

vortojB = {
    \neniuPovasGxinCxesigiVortoj
}

% =========== parto C =============
% "Kiam diras ni ĝis revid' ... "
muzikoC = \relative d' {
    cis8 d | e fis e4 cis4 a'8 e8~ | e2 r4
    d8 e | d4 d8 cis b4 a8 b | cis2 r4
    cis8 d | e fis e4 cis4 a'8 e8~ | e2 r4.
    a8~ | a gis fis gis4 fis8 gis a~ | a2 r4
}

kiamDirasNiGxisRevidVortoj = \lyricmode {
    Ki -- am | di -- ras ni ĝis re -- vid', | 
    pri la | ŝtor -- mo a -- per -- as mal -- | ĝoj'.
    Sed se | for -- te min te -- nas vi, |
    var -- | me mi est -- os sur voj' | 
}

vortojC = {
    \kiamDirasNiGxisRevidVortoj
}

% =========== parto D =============
% "La fajro jam forbruletas ... "

muzikoD = \relative d' {
    a4 | a'8 a g4 fis4 e8 d~ | d a4. r4 
    a8 a | e'4. d8 e4. d8 | cis4 a r 
    a | b'8 b a4 g4 fis8 e~ | e2 r8 
    cis'4 b8 | a4 a8 g fis4 fis8 e | d2 r4 
}

laFarjoJamForbruletasVortoj = \lyricmode { 
    La | faj -- ro jam for -- brul -- et -- | as,
    kaj for -- | i -- ri mi ne | pret -- as
    Se -- | ve -- re min a -- mas vi,
    ve -- nu | neĝ' ve -- nu neĝ' ve -- nu | neĝ'! 
}

vortojD = {
    \laFarjoJamForbruletasVortoj
}

% ==== ĉiom da la muziko =====

cxiomDaLaMuziko = {
<<
    { \muzikoA \muzikoB \muzikoC \muzikoD \muzikoB r4 }
    \addlyrics { \vortojA \vortojB \vortojC \vortojD \vortojB }
>>
}

% === presi la .pdf kaj la .midi dosierojn ===

\score {
    \new Staff { \key d \major \time 4/4 \tempo 4 = 110 \cxiomDaLaMuziko }

    \layout {}
    \midi { \tempo 4 = 110 }
}
