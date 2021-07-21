import sys
import os
args = sys.argv
args.pop(0)

name = args[0]
os.system(f"cwebp {name} -q 80 -o {name.split('.')[0]}.webp")
print(name.split('.')[0])
