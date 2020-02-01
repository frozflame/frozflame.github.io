Python 2.x Exceptions Hierarchy
===============================

If you are using Python 3.x, see [this](python-exceptions.html).

Python 2.x exception classes:

    BaseException
     +-- SystemExit
     +-- KeyboardInterrupt
     +-- GeneratorExit
     +-- Exception
          +-- StopIteration
          +-- StandardError
          |    +-- BufferError
          |    +-- ArithmeticError
          |    |    +-- FloatingPointError
          |    |    +-- OverflowError
          |    |    +-- ZeroDivisionError
          |    +-- AssertionError
          |    +-- AttributeError
          |    +-- EnvironmentError
          |    |    +-- IOError
          |    |    +-- OSError
          |    |         +-- WindowsError (Windows)
          |    |         +-- VMSError (VMS)
          |    +-- EOFError
          |    +-- ImportError
          |    +-- LookupError
          |    |    +-- IndexError
          |    |    +-- KeyError
          |    +-- MemoryError
          |    +-- NameError
          |    |    +-- UnboundLocalError
          |    +-- ReferenceError
          |    +-- RuntimeError
          |    |    +-- NotImplementedError
          |    +-- SyntaxError
          |    |    +-- IndentationError
          |    |         +-- TabError
          |    +-- SystemError
          |    +-- TypeError
          |    +-- ValueError
          |         +-- UnicodeError
          |              +-- UnicodeDecodeError
          |              +-- UnicodeEncodeError
          |              +-- UnicodeTranslateError
          +-- Warning
               +-- DeprecationWarning
               +-- PendingDeprecationWarning
               +-- RuntimeWarning
               +-- SyntaxWarning
               +-- UserWarning
               +-- FutureWarning
               +-- ImportWarning
               +-- UnicodeWarning
               +-- BytesWarning
               
