import sys
import os
args = sys.argv
args.pop(0)

name = args[0]
print(args, name)
os.system(f"cwebp {name} -q 80 -o {name.split('.')[0]}.webp")
