#!/bin/bash

date

LILYPOND='lilypond'
# ARGS=
# ARGS='-dno-print-note-names'
ARGS='-dprint-note-names'

FILES=()
for file in *.ly; do
	FILES+=("$file")
done

lilypond $ARGS "${FILES[@]}"

for file in *.ly; do
    if [[ $file =~ "Bass Line for Standard.ly" ]]; then
	# $LILYPOND $ARGS "$file"
	cp "${file%.ly}.pdf" "../NoteNames/Standard/Bass Line/"
	rm "${file%.ly}.pdf"
    elif [[ $file =~ "Guitar Solo for Standard.ly" ]]; then
	# $LILYPOND $ARGS "$file"
	    cp "${file%.ly}.pdf" "../NoteNames/Standard/Guitar Solo/"
	    rm "${file%.ly}.pdf"
    elif [[ $file =~ "Bass for Standard.ly" ]]; then
	# $LILYPOND $ARGS "$file"
	    cp "${file%.ly}.pdf" "../NoteNames/Standard/Bass/"
	    rm "${file%.ly}.pdf"
    elif [[ $file =~ "Bass High for Standard.ly" ]]; then
	# $LILYPOND $ARGS "$file"
	    cp "${file%.ly}.pdf" "../NoteNames/Standard/Bass/"
	    rm "${file%.ly}.pdf"
    elif [[ $file =~ "Bass Low for Standard.ly" ]]; then
	# $LILYPOND $ARGS "$file"
	    cp "${file%.ly}.pdf" "../NoteNames/Standard/Bass/"
	    rm "${file%.ly}.pdf"
    elif [[ $file =~ "Bass for Alto Voice.ly" ]]; then
	# $LILYPOND $ARGS "$file"
	    cp "${file%.ly}.pdf" "../NoteNames/Alto Voice/Bass/"
	    rm "${file%.ly}.pdf"
    elif [[ $file =~ "for Bb for Alto Voice.ly" ]]; then
	# $LILYPOND $ARGS "$file"
	    cp "${file%.ly}.pdf" "../NoteNames/Alto Voice/Bb/"
	    rm "${file%.ly}.pdf"
    elif [[ $file =~ "for Bb High for Alto Voice.ly" ]]; then
	# $LILYPOND $ARGS "$file"
	    cp "${file%.ly}.pdf" "../NoteNames/Alto Voice/Bb/"
	    rm "${file%.ly}.pdf"
    elif [[ $file =~ "for Bb Low for Alto Voice.ly" ]]; then
	# $LILYPOND $ARGS "$file"
	    cp "${file%.ly}.pdf" "../NoteNames/Alto Voice/Bb/"
	    rm "${file%.ly}.pdf"
    elif [[ $file =~ "Bass for Baritone Voice.ly" ]]; then
	# $LILYPOND $ARGS "$file"
	    cp "${file%.ly}.pdf" "../NoteNames/Baritone Voice/Bass/"
	    rm "${file%.ly}.pdf"
    elif [[ $file =~ "for Bb for Baritone Voice.ly" ]]; then
	# $LILYPOND $ARGS "$file"
	    cp "${file%.ly}.pdf" "../NoteNames/Baritone Voice/Bb/"
	    rm "${file%.ly}.pdf"
    elif [[ $file =~ "for Bb High for Baritone Voice.ly" ]]; then
	# $LILYPOND $ARGS "$file"
	    cp "${file%.ly}.pdf" "../NoteNames/Baritone Voice/Bb/"
	    rm "${file%.ly}.pdf"
    elif [[ $file =~ "for Bb Low for Baritone Voice.ly" ]]; then
	# $LILYPOND $ARGS "$file"
	    cp "${file%.ly}.pdf" "../NoteNames/Baritone Voice/Bb/"
	    rm "${file%.ly}.pdf"
    elif [[ $file =~ "for Bb for Standard.ly" ]]; then
	# $LILYPOND $ARGS "$file"
	    cp "${file%.ly}.pdf" "../NoteNames/Standard/Bb/"
	    rm "${file%.ly}.pdf"
    elif [[ $file =~ "for Bb High for Standard.ly" ]]; then
	# $LILYPOND $ARGS "$file"
	    cp "${file%.ly}.pdf" "../NoteNames/Standard/Bb/"
	    rm "${file%.ly}.pdf"
    elif [[ $file =~ "for Bb Low for Standard.ly" ]]; then
	# $LILYPOND $ARGS "$file"
	    cp "${file%.ly}.pdf" "../NoteNames/Standard/Bb/"
	    rm "${file%.ly}.pdf"
    elif [[ $file =~ "for Eb for Standard.ly" ]]; then
	# $LILYPOND $ARGS "$file"
	    cp "${file%.ly}.pdf" "../NoteNames/Standard/Eb/"
	    rm "${file%.ly}.pdf"
    elif [[ $file =~ "for Eb for Alto Voice.ly" ]]; then
	# $LILYPOND $ARGS "$file"
	    cp "${file%.ly}.pdf" "../NoteNames/Alto Voice/Eb/"
	    rm "${file%.ly}.pdf"
    elif [[ $file =~ "for Eb for Baritone Voice.ly" ]]; then
	# $LILYPOND $ARGS "$file"
	    cp "${file%.ly}.pdf" "../NoteNames/Baritone Voice/Eb/"
	    rm "${file%.ly}.pdf"
    elif [[ $file =~ "Standard.ly" ]]; then
	# $LILYPOND $ARGS "$file"
	    cp "${file%.ly}.pdf" "../NoteNames/Standard/"
	    rm "${file%.ly}.pdf"
    elif [[ $file =~ "Alto Voice.ly" ]]; then
	# $LILYPOND $ARGS "$file"
	    cp "${file%.ly}.pdf" "../NoteNames/Alto Voice/"
	    rm "${file%.ly}.pdf"
    elif [[ $file =~ "Baritone Voice.ly" ]]; then
	# $LILYPOND $ARGS "$file"
	    cp "${file%.ly}.pdf" "../NoteNames/Baritone Voice/"
	    rm "${file%.ly}.pdf"
    elif [[ $file =~ "for Viola.ly" ]]; then
	# $LILYPOND $ARGS "$file"
	    cp "${file%.ly}.pdf" "../NoteNames/Standard/Viola/"
	    rm "${file%.ly}.pdf"
    elif [[ $file =~ "Ly Core" ]]; then
	true
    else
	# $LILYPOND $ARGS "$file"
	    cp "${file%.ly}.pdf" "../NoteNames/Others/"
	    rm "${file%.ly}.pdf"
    fi
done

date
