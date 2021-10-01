Notes on Matplotlib
===================

### rc-params

`matplotlib.rcParams` and `matplotlib.pyplot.rcParams` are the same thing:

    >>> import matplotlib
    >>> import matplotlib.pyplot
    >>> matplotlib.rcParams is matplotlib.pyplot.rcParams
    True

`matplotlib.rcParams` is of type `matplotlib.RcParams`, which is a subclass of `dict`:

    >>> type(matplotlib.rcParams)
    matplotlib.RcParams
    >>> isinstance(matplotlib.rcParams, dict)
    True

Get the location of the config file:

    >>> matplotlib.matplotlib_fname()
    '/usr/local/lib/python3.9/site-packages/matplotlib/mpl-data/matplotlibrc'


### Font

List available font names:

    >>> from matplotlib.font_manager import fontManager 
    >>> names = {a.name for a in fontManager.ttflist} 
    >>> names.update({a.name for a in fontManager.afmlist}）
    >>> names
    {'.Aqua Kana',
     '.Arabic UI Display',
     '.Arabic UI Text',
     '.Helvetica Neue DeskInterface',
     ...
     'cmtt10'}