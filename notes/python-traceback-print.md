Python: Print Exeception and Continue Execution
===============================================

Swallow the exception but print the traceback:

    import traceback
    try:
        1 / 0
    except ZeroDivisionError:
        traceback.print_exc()
    print('I am still alive ^_^')