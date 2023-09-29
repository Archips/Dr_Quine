import os

if __name__ == "__main__":

    i = 5

    if (i <= 0):
        exit(0)
    if (os.path.isfile("Sully_5.py")):
        i -= 1
    filename = "Sully_" + str(i) + ".py"
    execution = "python3 Sully_" + str(i) + ".py"

    code = "import os%c%cif __name__ == %c__main__%c:%c%c    i = %d%c%c    if (i <= 0):%c        exit(0)%c    if (os.path.isfile(%cSully_5.py%c)):%c        i -= 1%c    filename = %cSully_%c + str(i) + %c.py%c%c    execution = %cpython3 Sully_%c + str(i) + %c.py%c%c%c    code = %c%s%c%c%c    file = open(filename, %cw%c)%c    file.write(code%%(10, 10, 34, 34, 10, 10, i, 10, 10, 10, 10, 34, 34, 10, 10, 34, 34, 34, 34, 10, 34, 34, 34, 34, 10, 10, 34, code, 34, 10, 10, 34, 34, 10, 10, 10, 10, 10, 34, 34))%c%c    file.close()%c%c    os.system(%cpython3 %c + filename)"

    file = open(filename, "w")
    file.write(code%(10, 10, 34, 34, 10, 10, i, 10, 10, 10, 10, 34, 34, 10, 10, 34, 34, 34, 34, 10, 34, 34, 34, 34, 10, 10, 34, code, 34, 10, 10, 34, 34, 10, 10, 10, 10, 10, 34, 34))

    file.close()

    os.system("python3 " + filename)
