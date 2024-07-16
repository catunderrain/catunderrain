function permutations(arr)
    if length(arr) <= 1
        return [arr]
    else
        result = []
        for i in 1:length(arr)
            rest = arr[1:i-1] ⋃ arr[i+1:end]
            for perm in permutations(rest)
                push!(result, [arr[i]; perm])
            end
        end
        return result
    end
end

# Sử dụng hàm để tạo các hoán vị của mảng [1, 2, 3]
arr = [1, 2, 3]
result = permutations(arr)

# In ra các hoán vị
for perm in result
    println(perm)
end
