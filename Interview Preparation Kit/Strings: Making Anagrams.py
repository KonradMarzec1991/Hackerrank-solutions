import string


LETTERS = dict.fromkeys(string.ascii_lowercase, 0)


def makeAnagram(a, b):
    # Three loops, brute force solution
    for char in a:
        LETTERS[char] += 1
    for char in b:
        LETTERS[char] -= 1

    counter = 0
    for val in LETTERS.values():
        counter += abs(val)
    return counter