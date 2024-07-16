def permutations(array)
    return [array] if array.size <= 1
  
    result = []
  
    array.each_with_index do |element, index|
      sub_array = array[0...index] + array[index+1..-1]
      sub_permutations = permutations(sub_array)
  
      sub_permutations.each do |perm|
        result << [element] + perm
      end
    end
  
    result
  end
  
  # Sử dụng hàm để tạo các hoán vị của mảng [1, 2, 3]
  array = [1, 2, 3]
  result = permutations(array)
  
  # In ra các hoán vị
  result.each do |perm|
    puts perm.inspect
  end
  