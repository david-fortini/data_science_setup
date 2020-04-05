import sys
from functions import give_one, create_df
from data_processing.data_proc import give_three
from funs import give_two


if __name__ == '__main__':
    df = create_df()
    df['one'] = give_one()
    df['two'] = give_two()
    df['three'] = give_three()
    if df.shape[1] == 4:
        print('Main run succesful')
    else:
        print('Error')
        sys.exit(1)
