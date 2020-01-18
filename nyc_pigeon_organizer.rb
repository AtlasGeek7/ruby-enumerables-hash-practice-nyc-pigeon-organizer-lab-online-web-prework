$hash, $subhash, $subArr = {}, {}, []
def nyc_pigeon_organizer(data)
  [data[:gender][:male],data[:gender][:female]].flatten.each_with_index { |pigeon,index| $subhash = {} ; process_data(pigeon,data); return $hash if index === [data[:gender][:male],data[:gender][:female]].flatten.length-1 }
end
def process_data(pigeon,data)
  data.each { |k,v| $subArr = []; $hash[pigeon] = fetch_pigeon_data(pigeon,k,v) }
end
def fetch_pigeon_data(pigeon,k,v)
  v.each {|subk,subv| $subhash[k] = $subArr.push(subk.to_s) if subv.include?(pigeon); return $subhash if $subhash.size === 3 }
end