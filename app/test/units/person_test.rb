require_relative '../test_helper'

require_relative '../../person/person'

class PersonTest < Minitest::Test 

    def test_one_is_one
        assert_equal 1, 1
    end

    def test_get_name_of_person
        assert_equal 'person', Person.new('person', 18).name
    end

    def test_get_name_of_person2
        assert_equal 'person2', Person.new('person2', 18).name
    end

    def test_get_age_of_person
        assert_equal 18, Person.new('person', 18).age
    end

    def test_set_name_of_person
        person = Person.new('person', 18)
        person.name = 'new person'
        assert_equal 'new person', person.name
    end

    def test_set_age_of_person
        person = Person.new('person', 18)
        person.age = 21
        assert_equal 21, person.age
    end

    def test_is_major_person
        person = Person.new('person', 18)
        assert_equal true, person.is_major?
    end

    def test_is_not_major_person
        person = Person.new('person', 17)
        assert_equal false, person.is_major?
    end

end