def nyc_pigeon_organizer(data)
  pigeons = [data[:gender][:male],data[:gender][:female]].flatten
  hash = {}
  pigeons.each do |pigeon|
    subhash = {}
    data.each do |k,v|
      subArr = []
      v.each do |subk,subv|
        if subv.include?(pigeon)
          subhash[k] = subArr.push(subk.to_s)
        end
      end
    end
    hash[pigeon] = subhash
  end
  return hash
end
