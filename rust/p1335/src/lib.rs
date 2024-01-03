use std::collections::HashMap;

pub fn add(left: usize, right: usize) -> usize {
    left + right
}

struct Solution;

impl Solution {
    pub fn min_difficulty(job_difficulty: Vec<i32>, d: i32) -> i32 {
        if job_difficulty.len() < d as usize {
            return -1;
        }

        let mut table = HashMap::new();

        let diff = Self::memo_difficulty(&job_difficulty, 0, d, &mut table);

        if diff == i32::MAX {
            -1
        } else {
            diff
        }
    }

    fn memo_difficulty(job_diff: &Vec<i32>, start: i32, remain: i32, table: &mut HashMap<(i32, i32), i32>) -> i32 {
        let n = job_diff.len() as i32;

        if start == n && remain == 0 {
            return 0;
        }

        if start == n || remain == 0 {
            return i32::MAX;
        }

        if let Some(&memo) = table.get(&(start, remain)) {
            return memo;
        }

        let mut max_day = -1;
        let mut min_diff = i32::MAX;

        for i in start..=(n - remain) {
            let daily = job_diff[i as usize];

            if daily > max_day {
                max_day = daily;
            }

            let diff1 = Solution::memo_difficulty(job_diff, i + 1, remain - 1, table);
            let diff = i32::saturating_add(max_day, diff1);

            if diff < min_diff {
                min_diff = diff;
            }
        }

        table.insert((start, remain), min_diff);

        min_diff
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn it_works() {
        assert_eq!(7, Solution::min_difficulty(vec![6,5,4,3,2,1], 2));
        assert_eq!(-1, Solution::min_difficulty(vec![9,9,9], 4));
        assert_eq!(3, Solution::min_difficulty(vec![1,1,1], 3));
    }
}
