def superDigit(n, k):
    final = sum(list(map(int, str(n))))*k
    if final < 10:
        return final
    while int(final) > 10:
        final = sum([int(v) for v in str(final)])
    return int(final)
