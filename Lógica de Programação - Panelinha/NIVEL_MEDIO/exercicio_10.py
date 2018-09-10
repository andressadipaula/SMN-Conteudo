ta = [3,2,1]
tb = []
tc = []
tamanho = len(ta)

def move (t1,t2):
	if t1 == 'ta':
		if t2 == 'tb':
			tb.append(ta[-1])

		else:
			tc.append(ta[-1])
		ta.pop(-1)

	elif t1 == 'tb':
		if t2 == 'ta':
			ta.append(tb[-1])
		else:
			tc.append(tb[-1])
		tb.pop(-1)

	else:
		if t2 == 'tc':
			ta.append(tc[-1])
		else:
			tb.append(tc[-1])
		tc.pop(-1)

while tc != [3,2,1]:
	try:
		if not tc and ta:
			move('ta','tc')
			print ta
			print tb
			print tc
			print '---'
		if not tb and ta and tamanho != (len(tc)+1):
			move('ta','tb')
			print ta
			print tb
			print tc
			print '---'
		if tc[-1] < tb[-1]:
			move('tc','tb')
			print ta
			print tb
			print tc
			print '---'

		if not ta:
			move('tb','ta')
			print ta
			print tb
			print tc
			print '---'
			
		if tc[-1] > tb[-1]:
			move('tb','tc')
			print ta
			print tb
			print tc
			print '---'

		if ta and tamanho == (len(tc)+1):
			move('ta','tc')
			print ta
			print tb
			print tc
			print '---'
	except:
		pass	




