import unittest
import dimagepkg/jpeg

test "normal JPEG":
  check get_size( "./tests/examples/normal.jpg" ) == (512,256)

test "file read error":
  check get_size( "./tests/examples/doesn_t-exist" ) == (-1,1)

test "invalid file":
  check get_size( "./tests/examples/normal.png" ) == (-1,2)
