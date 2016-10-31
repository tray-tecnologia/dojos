def transform_array(str)
  str.split(' ').map(&:to_i).sort
end

def sequence_groups(str)
  elements = transform_array(str)
  sequences = []
  group_sequence = [elements.shift]
  elements.each_with_index do |element, index|
    if element == group_sequence.last + 1
      group_sequence << element
    else
      sequences << group_sequence
      group_sequence = [element]
    end
  end

  sequences << group_sequence

  sequences

end

def parse_response(str)
  group = sequence_groups(str)
  resp = group.map { |element| parse_element(element) }
  resp.join(', ')
end

def parse_element(element)
  '[' + [element.first, element.last].uniq.join('-') + ']'
end
