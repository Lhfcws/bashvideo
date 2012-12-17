#! /usr/bin/python2
import time



def printAscii(filename):
	blank = " "*40
	f = open(filename, "r")
	lines = f.readlines()
	for line in lines:
		print blank,line
		time.sleep(0.1)

	f.close()

printAscii("ASCII-SYSU_WxW.txt")
