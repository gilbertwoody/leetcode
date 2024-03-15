/**
 * Note: The returned array must be malloced, assume caller calls free().
 */
int* productExceptSelf(int* nums, int numsSize, int* returnSize) {
    int i, *result = malloc(numsSize * sizeof(int));
    result[0] = 1;

    for (i = 1; i < numsSize; i++) {
        result[i] = nums[i - 1] * result[i - 1];
    }

    int p = 1;
    for (i = numsSize - 2; i >= 0; i--) {
        p *= nums[i+1];
        result[i] *= p;
    }

    *returnSize = numsSize;
    return result;
}
