class Complement
  def self.complements
    { 'G' => 'C',
      'C' => 'G',
      'T' => 'A',
      'A' => 'U' }
  end

  def self.convert(str, rules)
    str.chars.map { |x| rules[x] }.join
  end

  def self.of_dna(dna_string)
    convert(dna_string, complements)
  end

  def self.of_rna(rna_string)
    convert(rna_string, complements.invert)
  end
end
