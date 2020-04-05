import os
import functions as f
import funs
from data_processing.data_proc import give_three


def test_give_one():
    assert f.give_one() == 1


def test_create_df():
    df = f.create_df()
    if df is not None:
        assert True
    else:
        assert False


def test_give_two():
    assert funs.give_two() == 2


def test_give_three():
    assert give_three() == 3


def test_env_vars():
    var = os.environ['aws_key']
    if var is not None:
        assert True
    else:
        assert False
