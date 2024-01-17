#!/bin/bash

for file in *.ly; do
    if [[ $file =~ ^$1 ]]; then
    if [[ $file =~ "Bass Line for Standard.ly" ]]; then
	lilypond "$file"
	if [ $? -eq 0 ]; then
	    mv "${file%.ly}.pdf" "../Standard/Bass Line/"
	fi
    elif [[ $file =~ "Bass for Standard.ly" ]]; then
	lilypond "$file"
	if [ $? -eq 0 ]; then
	    mv "${file%.ly}.pdf" "../Standard/Bass/"
	fi
    elif [[ $file =~ "Bass High for Standard.ly" ]]; then
	lilypond "$file"
	if [ $? -eq 0 ]; then
	    mv "${file%.ly}.pdf" "../Standard/Bass/"
	fi
    elif [[ $file =~ "Bass Low for Standard.ly" ]]; then
	lilypond "$file"
	if [ $? -eq 0 ]; then
	    mv "${file%.ly}.pdf" "../Standard/Bass/"
	fi
    elif [[ $file =~ "Bass for Alto Voice.ly" ]]; then
	lilypond "$file"
	if [ $? -eq 0 ]; then
	    mv "${file%.ly}.pdf" "../Alto Voice/Bass/"
	fi
    elif [[ $file =~ "for Bb for Alto Voice.ly" ]]; then
	lilypond "$file"
	if [ $? -eq 0 ]; then
	    mv "${file%.ly}.pdf" "../Alto Voice/Bb/"
	fi
    elif [[ $file =~ "for Bb High for Alto Voice.ly" ]]; then
	lilypond "$file"
	if [ $? -eq 0 ]; then
	    mv "${file%.ly}.pdf" "../Alto Voice/Bb/"
	fi
    elif [[ $file =~ "for Bb Low for Alto Voice.ly" ]]; then
	lilypond "$file"
	if [ $? -eq 0 ]; then
	    mv "${file%.ly}.pdf" "../Alto Voice/Bb/"
	fi
    elif [[ $file =~ "Bass for Baritone Voice.ly" ]]; then
	lilypond "$file"
	if [ $? -eq 0 ]; then
	    mv "${file%.ly}.pdf" "../Baritone Voice/Bass/"
	fi
    elif [[ $file =~ "for Bb for Baritone Voice.ly" ]]; then
	lilypond "$file"
	if [ $? -eq 0 ]; then
	    mv "${file%.ly}.pdf" "../Baritone Voice/Bb/"
	fi
    elif [[ $file =~ "for Bb High for Baritone Voice.ly" ]]; then
	lilypond "$file"
	if [ $? -eq 0 ]; then
	    mv "${file%.ly}.pdf" "../Baritone Voice/Bb/"
	fi
    elif [[ $file =~ "for Bb Low for Baritone Voice.ly" ]]; then
	lilypond "$file"
	if [ $? -eq 0 ]; then
	    mv "${file%.ly}.pdf" "../Baritone Voice/Bb/"
	fi
    elif [[ $file =~ "for Bb for Standard.ly" ]]; then
	lilypond "$file"
	if [ $? -eq 0 ]; then
	    mv "${file%.ly}.pdf" "../Standard/Bb/"
	fi
    elif [[ $file =~ "for Bb High for Standard.ly" ]]; then
	lilypond "$file"
	if [ $? -eq 0 ]; then
	    mv "${file%.ly}.pdf" "../Standard/Bb/"
	fi
    elif [[ $file =~ "for Bb Low for Standard.ly" ]]; then
	lilypond "$file"
	if [ $? -eq 0 ]; then
	    mv "${file%.ly}.pdf" "../Standard/Bb/"
	fi
    elif [[ $file =~ "for Eb for Standard.ly" ]]; then
	lilypond "$file"
	if [ $? -eq 0 ]; then
	    mv "${file%.ly}.pdf" "../Standard/Eb/"
	fi
    elif [[ $file =~ "for Eb for Alto Voice.ly" ]]; then
	lilypond "$file"
	if [ $? -eq 0 ]; then
	    mv "${file%.ly}.pdf" "../Alto Voice/Eb/"
	fi
    elif [[ $file =~ "for Eb for Baritone Voice.ly" ]]; then
	lilypond "$file"
	if [ $? -eq 0 ]; then
	    mv "${file%.ly}.pdf" "../Baritone Voice/Eb/"
	fi
    elif [[ $file =~ "Standard.ly" ]]; then
	lilypond "$file"
	if [ $? -eq 0 ]; then
	    mv "${file%.ly}.pdf" "../Standard/"
	fi
    elif [[ $file =~ "Alto Voice.ly" ]]; then
	lilypond "$file"
	if [ $? -eq 0 ]; then
	    mv "${file%.ly}.pdf" "../Alto Voice/"
	fi
    elif [[ $file =~ "Baritone Voice.ly" ]]; then
	lilypond "$file"
	if [ $? -eq 0 ]; then
	    mv "${file%.ly}.pdf" "../Baritone Voice/"
	fi
    elif [[ $file =~ "Ly Core" ]]; then
	true
    else
	lilypond "$file"
	if [ $? -eq 0 ]; then
	    mv "${file%.ly}.pdf" "../"
	fi
    fi
    fi
done

for file in *.midi; do
    mv "$file" ../Midi/
done
