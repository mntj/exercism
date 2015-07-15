class ETL
  def self.transform(old)
    old.each_with_object({}) do |(pts, chr_arr), new|
      chr_arr.map { |chr| new[chr.downcase] = pts }
    end
  end
end
