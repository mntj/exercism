class ETL
  def self.transform(old)
    old.each_with_object({}) do |(k, v), h|
      v.map { |c| h[c.downcase] = k }
    end
  end
end
