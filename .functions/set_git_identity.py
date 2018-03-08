#!/usr/bin/env python
import json
import os 
import sys 
from subprocess import call, STDOUT 

FAIL = '\033[91m'

if len(sys.argv) == 1:
    sys.exit('{}Name of the identity is a required parameter'.format(FAIL))

if call(["git", "branch"], stderr=STDOUT, stdout=open(os.devnull, 'w')) != 0:
    sys.exit('{}Not a git repo!'.format(FAIL))

file_name = os.path.join(os.getenv('HOME'), '.git_identities')
if os.path.isfile(file_name) is False:
    sys.exit('{}File {} not found!'.format(FAIL, file_name))

identities = json.load(open(file_name))

try:
    identity = identities[sys.argv[1]]
    call(['git', 'config', 'user.name', identity['name']]) 
    call(['git', 'config', 'user.email', identity['email']])        
except KeyError:
    sys.exit('{}Identity {} not found or not properly formatted in identity file.'.format(FAIL, sys.argv[1]))
