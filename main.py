import argparse
import textract


parser = argparse.ArgumentParser()
parser.add_argument("--inputFile", type=str, required=True)
parser.add_argument("--outputFolder", type=str, required=True)
opt = parser.parse_args()

text = textract.process(opt.inputFile)

with open(opt.outputFolder + 'results.txt', 'w') as ofile:
    ofile.writelines(text)

