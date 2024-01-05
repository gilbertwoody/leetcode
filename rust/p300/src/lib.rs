pub fn add(left: usize, right: usize) -> usize {
    left + right
}

struct Solution;

impl Solution {
    pub fn length_of_lis(nums: Vec<i32>) -> i32 {
        let n = nums.len();
        let mut memo = vec![1; n];

        for j in 0..n {
            for i in 0..j {
                if nums[j] > nums[i] && memo[i] >= memo[j] {
                    memo[j] = memo[i] + 1;
                }
            }
        }

        *memo.iter().max().unwrap()
    }
}

#[cfg(test)]
mod tests {
    use super::Solution;

    #[test]
    fn it_works() {
        assert_eq!(4, Solution::length_of_lis(vec![10,9,2,5,3,7,101,18]));
        assert_eq!(4, Solution::length_of_lis(vec![0,1,0,3,2,3]));
        assert_eq!(1, Solution::length_of_lis(vec![7,7,7,7,7,7,7]));
        assert_eq!(6, Solution::length_of_lis(vec![1,3,6,7,9,4,10,5,6]));
    }
}
