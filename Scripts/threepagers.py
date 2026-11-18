import re

## Three page songs get different treatment depending on the song
## rectos usually start with a verse or intro
## versos usually end with a coda or a lyrics page
## eithers don't have a strong two-page sequence

rectoThrees = ['Django', "It Ain't Necessarily So", 
               "Is You Is, or Is You Ain't (Ma' Baby)",
               'Spring Can Really Hang You Up the Most']
versoThrees = ['Fever', "Moanin'", 'My Attorney Bernie', 
               'Peel Me a Grape', 'Straighten Up and Fly Right',
               'I Walk the Line',
               'Oh Lonesome Me Four', 'Dear Mr Fantasy']
eitherThrees = ['Twisted', 'You Belong to Me',
               "Do Nothin' Till You Hear From Me"]

def threepagetype(filename):
    for name in rectoThrees:
        pattern = '/' + name + ' - '
        match = re.search(pattern, filename)
        if match:
            return 'recto'
    for name in versoThrees:
        pattern = '/' + name + ' - '
        match = re.search(pattern, filename)
        if match:
            return 'verso'
    return False
