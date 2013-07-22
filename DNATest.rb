require_relative './dna'
require 'minitest/autorun'
require 'minitest/pride'


class DNATest < MiniTest::Unit::TestCase
  
  def test_dna
  	refute_nil DNA.new(''), msg=nil
  end


  def test_empty_string

    assert_equal 0, DNA.new('').count('A')
  end

  def test_dna_has_A
    
    assert_equal 6, DNA.new('ATGCTTCAGAAAGGTCTTACG').count('A')
  end

  def test_dna_has_T
    
    assert_equal 6, DNA.new('ATGCTTCAGAAAGGTCTTACG').count('T')
  end

  def test_dna_has_G
    
    assert_equal 5, DNA.new('ATGCTTCAGAAAGGTCTTACG').count('G')
  end

  def test_dna_has_C
    
    assert_equal 4, DNA.new('ATGCTTCAGAAAGGTCTTACG').count('C')
  end

  def test_non_dna
    
    assert_raises(ArgumentError)  { DNA.new('CCCCCU').count('U')}
  end



end