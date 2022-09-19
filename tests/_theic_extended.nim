# To run the extended tests you need to download the HEIC conformance images from
# https://github.com/nokiatech/heif_conformance into /src/examples/heic/ and
# rename this file to remove the leading _, then run `nimble test` as usual

import unittest
import dimage/heic

test "C001 HEIC":
  check get_size( "./tests/examples/heic/C001.heic" ) == (1280, 720)

test "C002 HEIC":
  check get_size( "./tests/examples/heic/C002.heic" ) == (1280, 720)

test "C003 HEIC":
  check get_size( "./tests/examples/heic/C003.heic" ) == (1280, 720)

test "C004 HEIC":
  check get_size( "./tests/examples/heic/C004.heic" ) == (1280, 720)

test "C005 HEIC":
  check get_size( "./tests/examples/heic/C005.heic" ) == (1280, 720)

test "C006 HEIC":
  check get_size( "./tests/examples/heic/C006.heic" ) == (1280, 720)

test "C007 HEIC":
  check get_size( "./tests/examples/heic/C007.heic" ) == (1280, 720)

test "C008 HEIC":
  check get_size( "./tests/examples/heic/C008.heic" ) == (1280, 720)

test "C009 HEIC":
  check get_size( "./tests/examples/heic/C009.heic" ) == (1280, 720)

test "C010 HEIC":
  check get_size( "./tests/examples/heic/C010.heic" ) == (1280, 720)

test "C011 HEIC":
  check get_size( "./tests/examples/heic/C011.heic" ) == (1280, 720)

test "C012 HEIC":
  check get_size( "./tests/examples/heic/C012.heic" ) == (1280, 720)

test "C013 HEIC":
  check get_size( "./tests/examples/heic/C013.heic" ) == (1280, 720)

test "C014 HEIC":
  check get_size( "./tests/examples/heic/C014.heic" ) == (1280, 720)

test "C015 HEIC":
  check get_size( "./tests/examples/heic/C015.heic" ) == (1280, 720)

test "C016 HEIC":
  check get_size( "./tests/examples/heic/C016.heic" ) == (1280, 720)

test "C017 HEIC":
  check get_size( "./tests/examples/heic/C017.heic" ) == (640, 360)

test "C018 HEIC":
  check get_size( "./tests/examples/heic/C018.heic" ) == (640, 360)

test "C019 HEIC":
  check get_size( "./tests/examples/heic/C019.heic" ) == (640, 360)

test "C020 HEIC":
  check get_size( "./tests/examples/heic/C020.heic" ) == (640, 360)

test "C021 HEIC":
  check get_size( "./tests/examples/heic/C021.heic" ) == (1280, 720)

test "C022 HEIC":
  check get_size( "./tests/examples/heic/C022.heic" ) == (1280, 720)

test "C023 HEIC":
  check get_size( "./tests/examples/heic/C023.heic" ) == (1280, 720)

test "C024 HEIC":
  check get_size( "./tests/examples/heic/C024.heic" ) == (1280, 720)

test "C025 HEIC":
  check get_size( "./tests/examples/heic/C025.heic" ) == (128, 72)

test "C026 (sequence)":
  check get_size( "./tests/examples/heic/C026.heic" ) == (-1, 3)

test "C027 (sequence)":
  check get_size( "./tests/examples/heic/C027.heic" ) == (-1, 3)

test "C028 (sequence)":
  check get_size( "./tests/examples/heic/C028.heic" ) == (-1, 3)

test "C029 (sequence)":
  check get_size( "./tests/examples/heic/C029.heic" ) == (-1, 3)

test "C030 (sequence)":
  check get_size( "./tests/examples/heic/C030.heic" ) == (-1, 3)

test "C031 (sequence)":
  check get_size( "./tests/examples/heic/C031.heic" ) == (-1, 3)

test "C032 (sequence)":
  check get_size( "./tests/examples/heic/C032.heic" ) == (-1, 3)

test "C034 HEIC":
  check get_size( "./tests/examples/heic/C034.heic" ) == (1280, 720)

test "C036 (sequence)":
  check get_size( "./tests/examples/heic/C036.heic" ) == (-1, 3)

test "C037 (sequence)":
  check get_size( "./tests/examples/heic/C037.heic" ) == (-1, 3)

test "C038 (sequence)":
  check get_size( "./tests/examples/heic/C038.heic" ) == (-1, 3)

test "C039 HEIC":
  check get_size( "./tests/examples/heic/C039.heic" ) == (1280, 720)

test "C040 HEIC":
  check get_size( "./tests/examples/heic/C040.heic" ) == (512, 288)

test "C041 HEIC":
  check get_size( "./tests/examples/heic/C041.heic" ) == (-1, 3)

test "C042 HEIC":
  check get_size( "./tests/examples/heic/C042.heic" ) == (1280, 720)

test "C043 HEIC":
  check get_size( "./tests/examples/heic/C043.heic" ) == (1280, 720)

test "C044 HEIC":
  check get_size( "./tests/examples/heic/C044.heic" ) == (1280, 720)

test "C045 HEIC":
  check get_size( "./tests/examples/heic/C045.heic" ) == (1024, 768)

test "C046 HEIC":
  check get_size( "./tests/examples/heic/C046.heic" ) == (1280, 720)

test "C047 HEIC":
  check get_size( "./tests/examples/heic/C047.heic" ) == (1280, 720)

test "C048 HEIC":
  check get_size( "./tests/examples/heic/C048.heic" ) == (1280, 720)

test "C049 HEIC":
  check get_size( "./tests/examples/heic/C049.heic" ) == (1920, 1080)

test "C050 HEIC":
  check get_size( "./tests/examples/heic/C050.heic" ) == (1280, 960)

test "C051 HEIC":
  check get_size( "./tests/examples/heic/C051.heic" ) == (1280, 720)

test "C052 HEIC":
  check get_size( "./tests/examples/heic/C052.heic" ) == (1280, 720)

test "C053 HEIC":
  check get_size( "./tests/examples/heic/C053.heic" ) == (1024, 512)

test "MIAF001 HEIC":
  check get_size( "./tests/examples/heic/MIAF001.heic" ) == (1280, 720)

test "MIAF002 HEIC":
  check get_size( "./tests/examples/heic/MIAF002.heic" ) == (2048, 2048)

test "MIAF003 HEIC":
  check get_size( "./tests/examples/heic/MIAF003.heic" ) == (2048, 2048)

test "MIAF004 HEIC":
  check get_size( "./tests/examples/heic/MIAF004.heic" ) == (128, 72)

test "MIAF005 HEIC":
  check get_size( "./tests/examples/heic/MIAF005.heic" ) == (1280, 720)

test "MIAF006 HEIC":
  check get_size( "./tests/examples/heic/MIAF006.heic" ) == (1920, 1440)

test "MIAF007 HEIC":
  check get_size( "./tests/examples/heic/MIAF007.heic" ) == (1280, 720)

test "multilayer001 HEIC":
  check get_size( "./tests/examples/heic/multilayer001.heic" ) == (1024, 512)

test "multilayer002 HEIC":
  check get_size( "./tests/examples/heic/multilayer002.heic" ) == (512,256)

test "multilayer003 HEIC":
  check get_size( "./tests/examples/heic/multilayer003.heic" ) == (1024, 512)

test "multilayer004 HEIC":
  check get_size( "./tests/examples/heic/multilayer004.heic" ) == (1024, 512)

test "multilayer005 HEIC":
  check get_size( "./tests/examples/heic/multilayer005.heic" ) == (512,256)
