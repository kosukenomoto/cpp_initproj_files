#define CATCH_CONFIG_MAIN
#include "class1.hpp"

#include <catch2/catch_test_macros.hpp>

TEST_CASE("Class1 can be default constructed") {
  Class1 obj;
  SUCCEED();  // 成功を明示
}
