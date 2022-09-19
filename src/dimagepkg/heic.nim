import std/[streams,endians]

type
  Errors* = enum
    IOError = (1, "Could not open file")
    Invalid = (2, "File is not a valid HEIC")
    SizeNotFound = (3, "No valid 'ispe' box found in the file")

proc read_int32( stream: FileStream ): int =
  var raw = stream.read_uint32()
  bigEndian32( result.addr, raw.addr )

proc get_size*( path: string ): (int,int) =
  var file: File

  if open(file, path, fm_read, -1):
    var stream = new_file_stream( path, fm_read )
    defer: stream.close()

    # Return the invalid image code unless the magic bytes match
    onFailedAssert(msg):
      return (-1,2)
    doAssert stream.read_uint8() == 0
    doAssert stream.read_uint8() == 0
    doAssert stream.read_uint8() == 0

    var first = ""
    var rest = ""

    # Brute force scanning the entire file ... Might be a better way :D
    while not stream.at_end():
      first = stream.read_str(1)

      if first == "i":
        rest = stream.peek_str(3)
        if rest == "spe":
          discard stream.read_str(3)
          discard stream.readUint32() # Box version and flags
          let width = stream.read_int32()
          let height = stream.read_int32()

          return ( width, height )

    return (-1,3)
  else:
    return (-1,1)
