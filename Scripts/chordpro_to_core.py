def chordpro_to_core(chordpro_file):
    source_path = pathlib.Path(chordpro_file)
    
    if not (source_path.is_file() and os.access(source_path, os.R_OK)):
        source_path = source_path.with_suffix(".cho")
        if not (source_path.is_file() and os.access(source_path, os.R_OK)):
            sys.exit(f"{arg_filename} is not a readable ChordPro file")

    ly_filename = source_path.with_suffix(".ly")

    with open(source_path) as cp_file:
        for l in cp_file:
            line = l.strip()
            if line and not line.startswith('#'):
                if line.startswith('{'):
                    match = re.search('{(.*)}', line)
                    if not match:
                        sys:exit(f"Missing close brace in directive")
                    directive = match.group(1)
                    if ':' in directive:
                        match = re.search('^(.*):(.*)$', directive)
                        process_directive(match.group(1), match.group(2))
                    else:
                        process_directive(directive, '')
                else:
                    process_lyrics_and_chords(line)






if __name__ == "__main__":
    chordpro_to_core(sys.argv[1])
