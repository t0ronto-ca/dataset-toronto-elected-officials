import os
import errno

DUMMY_FILE = 'outputs/dummy.txt'

def create_path(path):
    try:
        os.makedirs(path)
    except OSError as exception:
        if exception.errno != errno.EEXIST:
            raise

create_path('outputs')
open(DUMMY_FILE, 'a').close()

print('Created empty file at {}'.format(DUMMY_FILE))
print('Dummy action successfully executed!')
