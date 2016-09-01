#include <stdio.h>
#include "unity.h"

void test_add(void)
{
    int sum = add(3, 4);
    printf("'demo' test add 3 + 4 = %d\n", sum);
}

void test_multiply(void)
{
    int mult = multiply(3, 4);
    printf("'demo' test mult 3 * 4 = %d\n", mult);
}

void test_subtract(void)
{
    int sub = subtract(3, 4);
    printf("'demo' test subtract 3 - 4 = %d\n", sub);
}

// example of a test that obviously fails
void this_fails(void)
{
    TEST_ASSERT_EQUAL(12, 14);
}

int main(void)
{
    UNITY_BEGIN();

    RUN_TEST(test_add);
    RUN_TEST(test_multiply);
    RUN_TEST(this_fails);
    RUN_TEST(test_subtract);

    UNITY_END();

    return 0;
}
