def f(t):
    return re.findall(r'https://(en\.|www\.)?(.+)\.', t)[0][1]
