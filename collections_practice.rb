def begins_with_r (array)
  array.each { |tool| return false unless tool.start_with?("r")}
  return true
end

def contain_a (array)
  array.select { |string| string.downcase.include?("a") }
end

def first_wa (array)
  array.each do |word|
    return word if word.to_s.start_with?("wa")
  end
  nil
end

def remove_non_strings (array)
  array.select { |word| word.class == String}
end

def count_elements (array)
  counts = Hash.new(0)
  array.each { |element| counts[element] += 1 }
  desired_format = []
  counts.each do |hash, value|
    desired_format << {:name => hash[:name], :count => value}
  end
  desired_format
end

def merge_data(keys, data)
  keys.each do |person_hash|
    person_hash.each do |first_name, name|
      data.each do |data_hash|
        data_hash.each do |personal_name, personal_data|
          if name == personal_name
           merged_data.push(person_hash.merge(personal_data))
         end
        end
      end
    end
  end
  merged_data
end

def find_cool (people)
  people.select do |person_hash|
    person_hash[:temperature] == "cool"
  end
end

def organize_schools (school_names)
  school_locations = {}
  school_names.each do |name, location_hash|
    location_hash.each do |key, location|
      if school_locations.include?(location)
        school_locations[location].push(name)
      else
        school_locations[location] = [name]
      end
    end
  end
  school_locations
end
