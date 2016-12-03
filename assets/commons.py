import sys;
import subprocess;

def eprint(*args, **kwargs):
    """Print to syserr"""
    print(*args, file=sys.stderr, **kwargs)

def exec(*args):
    result = subprocess.call(args,  stdout=sys.stderr, stderr=sys.stderr);
    if result!=0:
        sys.exit(result);

