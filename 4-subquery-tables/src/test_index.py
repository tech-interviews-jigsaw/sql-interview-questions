from index import *
def test_name_of_youngest_customer():
    assert name_of_youngest_customer() == [('lisa simpson', 2006)]

def test_drinks_from_most_to_least_expensive():
    assert drinks_from_most_to_least_expensive() == [('ice cream float', 8),
 ('duff beer', 7),
 ('gin and tonic', 7),
 ('rootbeer', 6),
 ('milkshake', 5),
 ('egg cream soda', 3)]

def test_most_expensive_drink_bart_ordered():
    assert most_expensive_drink_bart_ordered() == [('milkshake', 5)]

def test_moes_customers():
    assert moes_customers() == [('bart simpson',), ('maggie simpson',)]
