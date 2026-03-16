#include "BlockHeader.h"

#include <print>

auto main() -> int {
    BlockHeader bh{.id = 0x1, .size = 0x2};

    try {
        std::println("{}", bh.id);
    } catch (std::exception& _) {
        return 1;
    }

    return 0;
}
