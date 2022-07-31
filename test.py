def ts(x):
    if x == 0:
        return 0
    return ts(x-1) + 1
