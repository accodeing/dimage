import unittest
import dimage

test "normal GIF":
  check get_mime_type( "./tests/examples/normal.gif" ) == GIF

test "APNG":
  check get_mime_type( "folder/file.apng" ) == APNG

test "AVIF":
  check get_mime_type( "folder/file.avif" ) == AVIF

test "BMP":
  check get_mime_type( "folder/file.bmp" ) == BMP

test "GIF":
  check get_mime_type( "folder/file.gif" ) == GIF

test "HEIC":
  check get_mime_type( "folder/file.heic" ) == HEIC

test "HEIC":
  check get_mime_type( "folder/file.heif" ) == HEIC

test "ICO":
  check get_mime_type( "folder/file.ico" ) == ICO

test "ICO":
  check get_mime_type( "folder/file.cur" ) == ICO

test "JPEG":
  check get_mime_type( "folder/file.jpg" ) == JPEG

test "JPEG":
  check get_mime_type( "folder/file.jpeg" ) == JPEG

test "JPEG":
  check get_mime_type( "folder/file.jfif" ) == JPEG

test "JPEG":
  check get_mime_type( "folder/file.pjpeg" ) == JPEG

test "JPEG":
  check get_mime_type( "folder/file.pjp" ) == JPEG

test "JPEGXL":
  check get_mime_type( "folder/file.jxl" ) == JPEGXL

test "PNG":
  check get_mime_type( "folder/file.png" ) == PNG

test "SVG":
  check get_mime_type( "folder/file.svg" ) == SVG

test "TIFF":
  check get_mime_type( "folder/file.tif" ) == TIFF

test "TIFF":
  check get_mime_type( "folder/file.tiff" ) == TIFF

test "WebP":
  check get_mime_type( "folder/file.webp" ) == WebP

test "WebP2":
  check get_mime_type( "folder/file.wp2" ) == WebP2
