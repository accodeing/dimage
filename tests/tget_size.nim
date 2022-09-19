import unittest
import dimage

test "normal GIF":
  check get_size( "./tests/examples/normal.gif" ) == (512,256)

test "animated GIF":
  check get_size( "./tests/examples/animated.gif" ) == (512,256)

test "normal HEIC":
  check get_size( "./tests/examples/normal.heic" ) == (512,256)

test "normal JPEG":
  check get_size( "./tests/examples/normal.jpg" ) == (512,256)

test "normal PNG":
  check get_size( "./tests/examples/normal.png" ) == (512,256)

test "animated APNG":
  check get_size( "./tests/examples/animated.apng" ) == (512,256)

test "animated PNG":
  check get_size( "./tests/examples/animated.png" ) == (512,256)

test "normal WEBP":
  check get_size( "./tests/examples/normal.webp" ) == (512,256)

test "animated WEBP":
  check get_size( "./tests/examples/animated.webp" ) == (512,256)

test "lossless WEBP":
  check get_size( "./tests/examples/lossless.webp" ) == (512,256)
