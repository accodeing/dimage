import unittest
import dimagepkg/heic

test "normal HEIC":
  check get_size( "./tests/examples/normal.heic" ) == (512,256)

test "file read error":
  check get_size( "./tests/examples/doesn_t-exist" ) == (-1,1)

test "invalid file":
  check get_size( "./tests/examples/normal.png" ) == (-1,2)

test "missing ispe box": # C041 from the extended tests
  check get_size( "./tests/examples/sequence.heic" ) == (-1,3)
