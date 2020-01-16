def nyc_pigeon_organizer(data)
  pigeons = data[:gender][:male].concat(data[:gender][:female])
  hash = {}
  i = 0
  while i < pigeons.length
    subhash = {}
    data.each do |k,v|
      subArr = []
      v.each do |subk,subv|
        if subv.include?(pigeons[i])
          subArr << subk.to_s
          subhash[k] = subArr
        #else
          #next
        end
      end
    end
    hash[pigeons[i]] = subhash
    i += 1
  end
  return hash
end 