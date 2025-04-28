#Marcus Jones Jr.
#Ch 10 lab 1
def main():
    total_correct_ans = 0
    state_capitals = {
        'Michigan':'Lansing',
        'Ohio':'Columbus',
        'Pennsylvania':'Harrisburg',
        'Louisiana':'Baton Rouge',
        'Florida':'Tallahassee'
    }
    print("State Capital's Game")
    for state in state_capitals:
        print(f"What is the capital of {state}?")
        answer = input("Type your answer: ")
        if answer == state_capitals[state]:
            print("\nGood job!\n")
            total_correct_ans +=1
        else:
            print(f"\nSorry, the answer is {state_capitals[state]}\n")
    print(f"You answered {total_correct_ans} correctly and {len(state_capitals) - total_correct_ans} incorrectly")


if __name__ == "__main__":
    main()