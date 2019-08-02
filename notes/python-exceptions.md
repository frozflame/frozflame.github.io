Python Exceptions Hierarchy
===========================

Python 3.x

    BaseException
     +-- SystemExit
     +-- KeyboardInterrupt
     +-- GeneratorExit
     +-- Exception
          +-- StopIteration
          +-- ArithmeticError
          |    +-- FloatingPointError
          |    +-- OverflowError
          |    +-- ZeroDivisionError
          +-- AssertionError
          +-- AttributeError
          +-- BufferError
          +-- EOFError
          +-- ImportError
          +-- LookupError
          |    +-- IndexError
          |    +-- KeyError
          +-- MemoryError
          +-- NameError
          |    +-- UnboundLocalError
          +-- OSError
          |    +-- BlockingIOError
          |    +-- ChildProcessError
          |    +-- ConnectionError
          |    |    +-- BrokenPipeError
          |    |    +-- ConnectionAbortedError
          |    |    +-- ConnectionRefusedError
          |    |    +-- ConnectionResetError
          |    +-- FileExistsError
          |    +-- FileNotFoundError
          |    +-- InterruptedError
          |    +-- IsADirectoryError
          |    +-- NotADirectoryError
          |    +-- PermissionError
          |    +-- ProcessLookupError
          |    +-- TimeoutError
          +-- ReferenceError
          +-- RuntimeError
          |    +-- NotImplementedError
          +-- SyntaxError
          |    +-- IndentationError
          |         +-- TabError
          +-- SystemError
          +-- TypeError
          +-- ValueError
          |    +-- UnicodeError
          |         +-- UnicodeDecodeError
          |         +-- UnicodeEncodeError
          |         +-- UnicodeTranslateError
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
               +-- ResourceWarning
               
               
Python 2.x

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
               
               