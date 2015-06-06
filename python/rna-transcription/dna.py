def to_rna(dna_string):
    dna_map = {
        'G': 'C',
        'C': 'G',
        'T': 'A',
        'A': 'U',
    }

    return "".join(
        [dna_map[char] for char in dna_string]
    )
