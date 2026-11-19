
import random


valid_choices = ('r', 'p', 's')


while True:
    user_choice = input("Enter your choice (r, p, s): ").lower()

    if user_choice not in valid_choices:
        print('invalid choice!')

    computer_choice = random.choice(valid_choices)

    print(f'You chose {user_choice}')
    print(f'Computer chose {computer_choice}')

    if user_choice == computer_choice:
        print('Tie')
    elif (
        (user_choice == 'r' and computer_choice == 's') or
        (user_choice == 's' and computer_choice == 'p') or
        (user_choice == 'p' and computer_choice == 'r')
         ):
        print("You Win!")
    else:
        print("You Lose")

    play_again = input("Continue? (Y/n): ")
    if play_again == 'n':
        break
