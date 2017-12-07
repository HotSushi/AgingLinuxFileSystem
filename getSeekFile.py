import sys
filename = sys.argv[1]
with open(sys.argv[2],'w') as out:
	with open(filename, 'r') as file:
		cur = None
		for line in file:
			l = line
			l = l.split(" ")
			l = filter(lambda x: x!= '', l)
			if not cur:
				cur = int(l[1])
			else:
				cur += int(l[1])
			if int(l[1]) !=0:
				out.write(str(cur)+'\n')
