import pytest

from hatch_demo.demo import add

def test_foo():
    assert add(1, 2) == 3
