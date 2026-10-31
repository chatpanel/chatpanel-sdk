"""Every generated type's annotations EVALUATE — not only parse.

Python 3.14+ evaluates annotations lazily, so `Literal["no", null]` imported fine on the
maintainer's 3.15 and raised NameError on import on 3.12 (CI, and most users): the SDK
0.25.0–0.27.0 could not be imported there. get_type_hints forces the evaluation on any version.
"""
import typing
import unittest

from chatpanel import _types_generated as types


class TypesEvaluate(unittest.TestCase):
    def test_every_typed_dict_evaluates(self):
        checked = 0
        for name in dir(types):
            obj = getattr(types, name)
            if isinstance(obj, type) and hasattr(obj, "__annotations__") and getattr(obj, "__total__", None) is not None:
                typing.get_type_hints(obj, globalns=vars(types))
                checked += 1
        self.assertGreater(checked, 50)


if __name__ == "__main__":
    unittest.main()
