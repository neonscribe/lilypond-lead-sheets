#!/bin/bash

date

LILYPOND='lilypond'
ARGS=
# ARGS='-dno-print-note-names'
# ARGS='-dprint-note-names'

FILES=()
for file in *.ly; do
	FILES+=("$file")
done

lilypond "${FILES[@]}"

for file in *.ly; do
    if [[ $file =~ "Bass Line for Standard.ly" ]]; then
	# $LILYPOND $ARGS "$file"
	cp "${file%.ly}.pdf" "../Standard/Bass Line/"
	rm "${file%.ly}.pdf"
    elif [[ $file =~ "Guitar Solo for Standard.ly" ]]; then
	# $LILYPOND $ARGS "$file"
	    cp "${file%.ly}.pdf" "../Standard/Guitar Solo/"
	    rm "${file%.ly}.pdf"
    elif [[ $file =~ "Bass for Standard.ly" ]]; then
	# $LILYPOND $ARGS "$file"
	    cp "${file%.ly}.pdf" "../Standard/Bass/"
	    rm "${file%.ly}.pdf"
    elif [[ $file =~ "Bass High for Standard.ly" ]]; then
	# $LILYPOND $ARGS "$file"
	    cp "${file%.ly}.pdf" "../Standard/Bass/"
	    rm "${file%.ly}.pdf"
    elif [[ $file =~ "Bass Low for Standard.ly" ]]; then
	# $LILYPOND $ARGS "$file"
	    cp "${file%.ly}.pdf" "../Standard/Bass/"
	    rm "${file%.ly}.pdf"
    elif [[ $file =~ "Bass for Alto Voice.ly" ]]; then
	# $LILYPOND $ARGS "$file"
	    cp "${file%.ly}.pdf" "../Alto Voice/Bass/"
	    rm "${file%.ly}.pdf"
    elif [[ $file =~ "for Bb for Alto Voice.ly" ]]; then
	# $LILYPOND $ARGS "$file"
	    cp "${file%.ly}.pdf" "../Alto Voice/Bb/"
	    rm "${file%.ly}.pdf"
    elif [[ $file =~ "for Bb High for Alto Voice.ly" ]]; then
	# $LILYPOND $ARGS "$file"
	    cp "${file%.ly}.pdf" "../Alto Voice/Bb/"
	    rm "${file%.ly}.pdf"
    elif [[ $file =~ "for Bb Low for Alto Voice.ly" ]]; then
	# $LILYPOND $ARGS "$file"
	    cp "${file%.ly}.pdf" "../Alto Voice/Bb/"
	    rm "${file%.ly}.pdf"
    elif [[ $file =~ "Bass for Baritone Voice.ly" ]]; then
	# $LILYPOND $ARGS "$file"
	    cp "${file%.ly}.pdf" "../Baritone Voice/Bass/"
	    rm "${file%.ly}.pdf"
    elif [[ $file =~ "for Bb for Baritone Voice.ly" ]]; then
	# $LILYPOND $ARGS "$file"
	    cp "${file%.ly}.pdf" "../Baritone Voice/Bb/"
	    rm "${file%.ly}.pdf"
    elif [[ $file =~ "for Bb High for Baritone Voice.ly" ]]; then
	# $LILYPOND $ARGS "$file"
	    cp "${file%.ly}.pdf" "../Baritone Voice/Bb/"
	    rm "${file%.ly}.pdf"
    elif [[ $file =~ "for Bb Low for Baritone Voice.ly" ]]; then
	# $LILYPOND $ARGS "$file"
	    cp "${file%.ly}.pdf" "../Baritone Voice/Bb/"
	    rm "${file%.ly}.pdf"
    elif [[ $file =~ "for Bb for Standard.ly" ]]; then
	# $LILYPOND $ARGS "$file"
	    cp "${file%.ly}.pdf" "../Standard/Bb/"
	    rm "${file%.ly}.pdf"
    elif [[ $file =~ "for Bb High for Standard.ly" ]]; then
	# $LILYPOND $ARGS "$file"
	    cp "${file%.ly}.pdf" "../Standard/Bb/"
	    rm "${file%.ly}.pdf"
    elif [[ $file =~ "for Bb Low for Standard.ly" ]]; then
	# $LILYPOND $ARGS "$file"
	    cp "${file%.ly}.pdf" "../Standard/Bb/"
	    rm "${file%.ly}.pdf"
    elif [[ $file =~ "for Eb for Standard.ly" ]]; then
	# $LILYPOND $ARGS "$file"
	    cp "${file%.ly}.pdf" "../Standard/Eb/"
	    rm "${file%.ly}.pdf"
    elif [[ $file =~ "for Eb for Alto Voice.ly" ]]; then
	# $LILYPOND $ARGS "$file"
	    cp "${file%.ly}.pdf" "../Alto Voice/Eb/"
	    rm "${file%.ly}.pdf"
    elif [[ $file =~ "for Eb for Baritone Voice.ly" ]]; then
	# $LILYPOND $ARGS "$file"
	    cp "${file%.ly}.pdf" "../Baritone Voice/Eb/"
	    rm "${file%.ly}.pdf"
    elif [[ $file =~ "Standard.ly" ]]; then
	# $LILYPOND $ARGS "$file"
	    cp "${file%.ly}.pdf" "../Standard/"
	    rm "${file%.ly}.pdf"
    elif [[ $file =~ "Alto Voice.ly" ]]; then
	# $LILYPOND $ARGS "$file"
	    cp "${file%.ly}.pdf" "../Alto Voice/"
	    rm "${file%.ly}.pdf"
    elif [[ $file =~ "Baritone Voice.ly" ]]; then
	# $LILYPOND $ARGS "$file"
	    cp "${file%.ly}.pdf" "../Baritone Voice/"
	    rm "${file%.ly}.pdf"
    elif [[ $file =~ "for Viola.ly" ]]; then
	# $LILYPOND $ARGS "$file"
	    cp "${file%.ly}.pdf" "../Standard/Viola/"
	    rm "${file%.ly}.pdf"
    elif [[ $file =~ "Ly Core" ]]; then
	true
    else
	# $LILYPOND $ARGS "$file"
	    cp "${file%.ly}.pdf" "../Others/"
	    rm "${file%.ly}.pdf"
    fi
done

for file in *.midi; do
    mv "$file" ../Midi/
done

date
