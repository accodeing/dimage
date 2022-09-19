import unittest
import dimagepkg/jp2

test "normal JP2":
  check get_size( "./tests/examples/normal.jp2" ) == (512,256)

test "file read error":
  check get_size( "./tests/examples/doesn_t-exist" ) == (-1,1)

test "invalid file":
  check get_size( "./tests/examples/normal.png" ) == (-1,2)
