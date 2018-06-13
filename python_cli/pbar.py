import sys, subprocess, time
from progressbar import ProgressBar, Bar, Percentage, AdaptiveETA, ETA, Counter
try:
	bar = ProgressBar(widgets=[Counter(), "  ", Bar(), Percentage(), ' (', AdaptiveETA(), ')'], max_value=int(sys.argv[2]))
	while(True):
		i = int(subprocess.check_output(sys.argv[1], shell=True).decode())
		bar.update(i)
		if i == bar.max_value:
			bar.finish()
			break
		time.sleep(0.5)
except KeyboardInterrupt:
	print("")
	pass
except:
	print("Invalid argument")