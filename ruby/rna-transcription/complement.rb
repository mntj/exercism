class Complement
  @da_funk = ->(f,g) { f.chars.map {
      |x| g[x]
    }.join
  }
  def self.of_dna(dna_string)
    complements = {
      'G' => 'C',
      'C' => 'G',
      'T' => 'A',
      'A' => 'U'
    }
    @da_funk.call(dna_string, complements)
  end

  def self.of_rna(rna_string)
    complements = {
      'C' => 'G',
      'G' => 'C',
      'A' => 'T',
      'U' => 'A'
    }
    @da_funk.call(rna_string, complements)
  end
end
