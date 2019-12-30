from django.test import TestCase

# Create your tests here.

class BasicTest(TestCase):
    def test_basic(self):
        self.assertEqual(2+2,4)
