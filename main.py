import argparse
import textract
import sys


parser = argparse.ArgumentParser()
parser.add_argument("--inputFile", type=str, required=True)
parser.add_argument("--outputfolder", type=str, required=True)
opt = parser.parse_args()

text = textract.process(opt.inputFile)

with open(opt.outputfolder + 'result.txt', 'w') as ofile:
    ofile.writelines(str(text))

