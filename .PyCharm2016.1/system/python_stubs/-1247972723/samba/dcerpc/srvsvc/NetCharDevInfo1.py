# encoding: utf-8
# module samba.dcerpc.srvsvc
# from /usr/lib/python2.7/dist-packages/samba/dcerpc/srvsvc.so
# by generator 1.138
""" srvsvc DCE/RPC """

# imports
import dcerpc as __dcerpc
import talloc as __talloc


class NetCharDevInfo1(__talloc.Object):
    # no doc
    def __init__(self, *args, **kwargs): # real signature unknown
        pass

    @staticmethod # known case of __new__
    def __new__(S, *more): # real signature unknown; restored from __doc__
        """ T.__new__(S, ...) -> a new object with type S, a subtype of T """
        pass

    device = property(lambda self: object(), lambda self, v: None, lambda self: None)  # default

    status = property(lambda self: object(), lambda self, v: None, lambda self: None)  # default

    time = property(lambda self: object(), lambda self, v: None, lambda self: None)  # default

    user = property(lambda self: object(), lambda self, v: None, lambda self: None)  # default



