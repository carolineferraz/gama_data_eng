import pandas as pd

df1 = pd.DataFrame({'lkey': ['foo', 'bar', 'baz', 'foo'], 'value': [1, 2, 3, 5]})
df2 = pd.DataFrame({'rkey': ['foo', 'bar', 'baz', 'foo'], 'value': [5, 6, 7, 8]})

print("-" * 110)
print(df1)
print("-" * 110)
print(df2)
print("-" * 110)

r = df1.merge(df2, left_on='lkey', right_on='rkey')

print(r)