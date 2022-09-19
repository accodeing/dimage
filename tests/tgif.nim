import unittest
import dimagepkg/gif

test "normal GIF":
  check get_size( "./tests/examples/normal.gif" ) == (512,256)

test "animated GIF":
  check get_size( "./tests/examples/animated.gif" ) == (512,256)

test "file read error":
  check get_size( "./tests/examples/doesn_t-exist" ) == (-1,1)

test "invalid file":
  check get_size( "./tests/examples/normal.avif" ) == (-1,2)
