fn main() {
    let mut nums = vec![1, 2, 3];
    let result = permutations(&mut nums);
    for perm in result {
        println!("{:?}", perm);
    }
}

fn permutations(nums: &mut Vec<i32>) -> Vec<Vec<i32>> {
    let mut results = Vec::new();
    generate_permutations(nums, 0, &mut results);
    results
}

fn generate_permutations(nums: &mut Vec<i32>, start: usize, results: &mut Vec<Vec<i32>>) {
    if start == nums.len() {
        results.push(nums.clone());
    } else {
        for i in start..nums.len() {
            nums.swap(start, i);
            generate_permutations(nums, start + 1, results);
            nums.swap(start, i); // Backtrack
        }
    }
}
