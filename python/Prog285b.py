# main file
from Cl285b import Salesperson  #from "class" import "function"

def main():
  try: 
    print("Number   Code   Sales   Commission")
    people = []
    with open("python/data/Prog285b.txt", 'r') as f:  #like scanner
      for line in f:  # for line in file
        ldata = line.split(" ")   #line data 
        id = int(ldata[0])
        code = int(ldata[1])
        sales = float(ldata[2])
        dude = Salesperson(id, code, sales)  #constructer
        people.append(dude)
    for sp in people:  #for each loop, sp = salesperson
      sp.calc()
      print(sp)
  except Exception as e:
    print("Error:", e)
  pass



  #if we didn't do this, running this program would run imported code too which means if Salesperson wasn't a class it would run it as soon as it is imported. Not optimal for programming. 
if __name__ == "__main__":
  main()


