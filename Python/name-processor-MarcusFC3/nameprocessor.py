#Marcus Jones Jr.
#Chapter 9
#Lab 1
def main():
    print("Name Processor")

    full_name = input("\nEnter your name: ")
    first_last = full_name.split()
    if ',' in full_name:
        first_last
        print(full_name)
    else:
        full_name_separated = full_name.split(' ')
        print(full_name_separated[1] + ', ' + full_name_separated[0])

def fix_cap(name):
    name = str(name)
    if name[0].isupper():
        return name
    else:
        return name.replace(name[0], name[0].upper,1)

main()