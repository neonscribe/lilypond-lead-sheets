#!/bin/bash

mkdir -p 'Alto Voice'
mkdir -p 'Alto Voice/Bass'
mkdir -p 'Alto Voice/Bb'
mkdir -p 'Alto Voice/Eb'

mkdir -p 'Baritone Voice'
mkdir -p 'Baritone Voice/Bass'
mkdir -p 'Baritone Voice/Bb'
mkdir -p 'Baritone Voice/Eb'

mkdir -p Others
mkdir -p Book
mkdir -p Midi

mkdir -p Standard
mkdir -p Standard/Bass
mkdir -p 'Standard/Bass Line'
mkdir -p 'Standard/Guitar Solo'
mkdir -p Standard/Bb
mkdir -p Standard/Eb
mkdir -p Standard/Viola

mkdir -p TeXify

mkdir -p 'NoteNames/Alto Voice'
mkdir -p 'NoteNames/Alto Voice/Bass'
mkdir -p 'NoteNames/Alto Voice/Bb'
mkdir -p 'NoteNames/Alto Voice/Eb'

mkdir -p 'NoteNames/Baritone Voice'
mkdir -p 'NoteNames/Baritone Voice/Bass'
mkdir -p 'NoteNames/Baritone Voice/Bb'
mkdir -p 'NoteNames/Baritone Voice/Eb'

mkdir -p NoteNames/Others
mkdir -p NoteNames/Book

mkdir -p NoteNames/Standard
mkdir -p NoteNames/Standard/Bass
mkdir -p 'NoteNames/Standard/Bass Line'
mkdir -p 'NoteNames/Standard/Guitar Solo'
mkdir -p NoteNames/Standard/Bb
mkdir -p NoteNames/Standard/Eb
mkdir -p NoteNames/Standard/Viola

mkdir -p NoteNames/TeXify
( cd NoteNames; ln -s ../Include Include )
