def nyc_pigeon_organizer(data)
  #pigeons = [data[:gender][:male],data[:gender][:female]].flatten
  hash = {}
  [data[:gender][:male],data[:gender][:female]].flatten.each do |pigeon|
    subhash = {}
    data.each do |k,v|
      subArr = []
      v.each do |subk,subv|
        subhash[k] = subArr.push(subk.to_s) if subv.include?(pigeon)
      end
    end
    hash[pigeon] = subhash
  end
  return hash
end
##########################################################################
$hash, $subhash, $subArr = {}, {}, []
def nyc_pigeon_organizer(data)
  [data[:gender][:male],data[:gender][:female]].flatten.each {|pigeon| $subhash = {} ; process_data(pigeon,data)}
  return $hash
end
def process_data(pigeon,data)
  data.each {|k,v| $subArr = []; $hash[pigeon] = fetch_pigeon_data(pigeon,k,v)}
  return $hash
end
def fetch_pigeon_data(pigeon,k,v)
  v.each {|subk,subv| $subhash[k] = $subArr.push(subk.to_s) if subv.include?(pigeon) }
  return $subhash
end