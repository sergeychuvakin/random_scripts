import argparse

# initiate the parser
parser = argparse.ArgumentParser()
parser.add_argument("-m", "--manager", help="Manager login")
parser.add_argument("-u", "--user", help="User login")

# read arguments from the command line
args = parser.parse_args()

# check for --version or -V
#if args.version:
#    print("this is myprogram version 0.1")
print(args.manager, type(args.manager))
