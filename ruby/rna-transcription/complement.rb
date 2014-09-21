class Complement
  @complements = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U'
  }
  $m = ->(f,g) { f.chars.map {
      |x| g[x]
    }.join
  }
  def self.of_dna(dna_string)
    $m.(dna_string, @complements)
  end
  def self.of_rna(rna_string)
    $m.(rna_string, @complements.invert)
  end
end
