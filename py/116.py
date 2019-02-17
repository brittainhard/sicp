def expt(b, n):
    return expt_iter(b, n, 1)

def expt_iter(b, counter, product):
    print(b, counter, product)
    if counter == 0:
        return product
    elif counter % 2 == 0:
        return expt_iter(b, counter / 2, product ** 2)
    else:
        return expt_iter(b, counter - 1, (b * product))

def expt(b, n):
    return expt_iter(b, n, 1)

print(expt(2, 15))
