#! /usr/bin/python3

import sys

try:
	import geocoder
except:
	print("Error: Install python3 geocoder module!")
	sys.exit(1)

try:
	import pyperclip
except:
	print("Error: Install python3 pyperclip module!")
	sys.exit(1)
	
def main():
	try:
		location=sys.argv[1]
	except:
		print("Error: Enter Location!")
		sys.exit(1);
	g=geocoder.komoot(location)
	latlng=str(g.latlng)
	if latlng=="None":
		print("Error: Invalid Location!")
		sys.exit(1);
	pyperclip.copy(latlng)
	print("Lattitude: "+str(g.latlng[0]))
	print("Longitude: "+str(g.latlng[1]))
	print("Also copied to clipboard..")
	pass

if __name__ == '__main__':
	sys.exit(main())