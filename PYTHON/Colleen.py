''' comment out '''

def quine():
    s = "''' comment out '''%c%cdef quine():%c    s = %c%s%c%c    print(s%%(10,10,10,34,s,34,10,34,34,10,10,10,10,10,10,34,34,10), end=%c%c)%c%cdef main():%c    # comment in%c    quine()%c%cif __name__ == %c__main__%c:%c    main()"
    print(s%(10,10,10,34,s,34,10,34,34,10,10,10,10,10,10,34,34,10), end="")

def main():
    # comment in
    quine()

if __name__ == "__main__":
    main()
