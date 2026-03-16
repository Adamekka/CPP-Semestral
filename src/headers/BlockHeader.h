//
// Created by lpbigfish on 16.03.26.
//

#ifndef SEMESTRAL_BLOCKHEADER_H
#define SEMESTRAL_BLOCKHEADER_H
#include <array>
#include <cstdint>

#endif //SEMESTRAL_BLOCKHEADER_H

using Sha256HashRepr = std::array<uint8_t, 32>;

struct BlockHeader {
    uint32_t version;
    Sha256HashRepr previous_hash;
    Sha256HashRepr merkle_root;
    uint32_t time;
    uint32_t bits;
    uint32_t nonce;
};
