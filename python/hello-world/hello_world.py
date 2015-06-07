#
# Skeleton file for the Python "Hello World" exercise.
#
import pdb


def hello(name=''):
    if len(name) == 0:
        return 'Hello, World!'
    else:
        return "Hello, %s!" % (name)
