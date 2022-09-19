import unittest
import dimagepkg/png

test "normal PNG":
  check get_size( "./tests/examples/normal.png" ) == (512,256)

test "animated APNG":
  check get_size( "./tests/examples/animated.apng" ) == (512,256)

test "animated PNG":
  check get_size( "./tests/examples/animated.png" ) == (512,256)

test "file read error":
  check get_size( "./tests/examples/doesn_t-exist" ) == (-1,1)

test "invalid file":
  check get_size( "./tests/examples/normal.avif" ) == (-1,2)
