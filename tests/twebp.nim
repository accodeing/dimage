import unittest
import dimagepkg/webp

test "normal WEBP":
  check get_size( "./tests/examples/normal.webp" ) == (512,256)

test "animated WEBP":
  check get_size( "./tests/examples/animated.webp" ) == (512,256)

test "lossless WEBP":
  check get_size( "./tests/examples/lossless.webp" ) == (512,256)

test "file read error":
  check get_size( "./tests/examples/doesn_t-exist" ) == (-1,1)

test "invalid file":
  check get_size( "./tests/examples/normal.png" ) == (-1,2)
