use std::collections::HashMap;

struct Solution;

impl Solution {
    pub fn count_pairs(coordinates: Vec<Vec<i32>>, k: i32) -> i32 {
        let mut count = 0;
        let mut known = HashMap::new();

        for p in coordinates.iter() {
            let x1 = p[0];
            let y1 = p[1];

            for x in 0..=k {
                let x2 = x ^ x1;
                let y2 = (k - x) ^ y1;

                if let Some(c) = known.get(&vec![x2, y2]) {
                    count += c;
                }
            }

            *known.entry(vec![x1, y1]).or_insert(0) += 1;
        }

        count
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn simple_test() {
        assert_eq!(2, Solution::count_pairs(vec![vec![1,2],vec![4,2],vec![1,3],vec![5,2]], 5));
        assert_eq!(10, Solution::count_pairs(vec![vec![1,3],vec![1,3],vec![1,3],vec![1,3],vec![1,3]], 0));
    }
}
