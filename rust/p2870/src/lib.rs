use std::collections::HashMap;
use std::convert::identity;

struct Solution;

impl Solution {
    pub fn min_operations(nums: Vec<i32>) -> i32 {
        let mut counter = HashMap::new();

        for n in nums.iter() {
            *counter.entry(n).or_insert(0) += 1;
        }

        let result = counter.values().try_fold(0, |acc, &x| {
            if x == 1 {
                Err(())
            } else {
                // When int_roundings feature is stable:
                // Ok(acc + (x as i32).div_ceil(3))
                Ok(acc + (x + 2) / 3)
            }
        });

        result.map_or(-1, identity)
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn it_works() {
        assert_eq!(Solution::min_operations(vec![2,3,3,2,2,4,2,3,4]), 4);
        assert_eq!(Solution::min_operations(vec![2,1,2,2,3,3]), -1);
    }
}
