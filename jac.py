def jaccard(a,b): 
    x = len(set(a) & set(b))
    a.extend(b)
    return x / len(set(a))
