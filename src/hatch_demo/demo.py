

def add(x: int, y: int) -> int:
    return x + y

def broken_add(x: int, y: int) -> int:
    """
    Explicit type error.
    """
    return "foobar"
