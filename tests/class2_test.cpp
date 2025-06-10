#define CATCH_CONFIG_MAIN
#include "class2.hpp"

#include <catch2/catch_test_macros.hpp>

TEST_CASE("Class2 can be default constructed") {
  Class2 obj;
  SUCCEED();  // 成功を明示
}
