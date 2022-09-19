# The following GIF Signature identifies  the  data  following  as  a valid GIF
# image stream.  It consists of the following six characters: G I F 8 7 a
#
# LSB first
#
# Width  7-0 byte 1 and 7-0 byte 2
# Height 7-0 byte 1 and 7-0 byte 2

import std/[streams, endians]

type
  Errors* = enum
    IOError = (1, "Could not open file")
    Invalid = (2, "File is not a valid Gif")

proc read_int16( stream:FileStream ): int =
  var raw = stream.readUInt16()
  littleEndian16( result.addr, raw.addr)

proc get_size*( path: string ): (int,int) =
  var file: File

  if open(file, path, fm_read, -1):
    var stream = new_file_stream( path, fm_read )
    defer: stream.close()

    onFailedAssert(msg):
      return (-1,2)

    let magic_bytes = stream.readStr(6)
    doAssert magic_bytes == "GIF87a" or magic_bytes == "GIF89a"

    let width = stream.read_int16()
    let height = stream.read_int16()

    return ( width, height )
  else:
    return (-1,1)
