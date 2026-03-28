"""
Author: Sebastian Mansilla Cots
Date: 23/03/2026
Project: Lexical Analysis Implementation (Elven language)
Purpose of the project: Test de regular expression for the project by using various strings
"""

import unittest

from regex_elven import accept

class TestRegEx(unittest.TestCase):
    def test_empty(self):
        self.assertFalse(accept(''))
    
    def test_valid(self):
        self.assertTrue(accept('coron'))
        self.assertTrue(accept('cormarë'))
        self.assertTrue(accept('craban'))
        self.assertTrue(accept('cú'))
        self.assertTrue(accept('cuivie'))
    
    def test_invalid(self):
        self.assertFalse(accept('cormare'))
        self.assertFalse(accept('cu'))
        self.assertFalse(accept('comala'))
        self.assertFalse(accept('carrucel'))
        self.assertFalse(accept('xyzcoron'))
        self.assertFalse(accept('xyzcormarë'))
        self.assertFalse(accept('xyzcraban'))
        self.assertFalse(accept('xyzcú'))
        self.assertFalse(accept('xyzcuivie'))
        self.assertFalse(accept('xyzcoronxyz'))
        self.assertFalse(accept('xyzcormarëxyz'))
        self.assertFalse(accept('xyzcrabanxyz'))
        self.assertFalse(accept('xyzcúxyz'))
        self.assertFalse(accept('xyzcuiviexyz'))
        self.assertFalse(accept('coronxyzxyz'))
        self.assertFalse(accept('cormarëxyz'))
        self.assertFalse(accept('crabanxyz'))
        self.assertFalse(accept('cúxyz'))
        self.assertFalse(accept('cuiviexyz'))

if __name__ == '__main__':
    unittest.main()