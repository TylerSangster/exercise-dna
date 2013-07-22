class DNA
  

  def initialize(dna)
    @input=dna
  end 

  def count(letter)
    if letter == 'A' || letter == 'T' || letter =='G' || letter=='C'
      @input.scan(letter).count
    else
      raise ArgumentError.new("#{letter} is not a nucleotide.")
    end

  end

  def nucleotide_counts
    counts = {}
    %w(A T C G).each do |letter|
      counts[letter] = count(letter)
    end
    counts
  end

end