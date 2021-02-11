import collections


def isValid(s):
    letters = dict(collections.Counter(s))
    it_list = list(letters.values())
    it_list.sort()

    if it_list.count(it_list[0]) == len(it_list):
        return 'YES'
    elif it_list.count(it_list[0]) == len(it_list) - 1 \
            and it_list[-1] - it_list[-2] == 1:
        return 'YES'
    elif it_list.count(it_list[-1]) == len(it_list) - 1 \
            and it_list[0] == 1:
        return 'YES'
    else:
        return 'NO'
