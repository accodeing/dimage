import std/[streams, endians]

type
  Errors* = enum
    IOError = (1, "Could not open file")
    Invalid = (2, "File is not a valid PNG")

const PNG_SIGNATURE = 0x0A1A0A0D474E5089

proc read_int32( stream: FileStream ): int =
  var raw = stream.readUInt32()
  bigEndian32( result.addr, raw.addr)

proc get_size*( path: string ): (int,int) =
  var file: File

  if open(file, path, fm_read, -1):
    var stream = new_file_stream( file )
    defer: stream.close()

    onFailedAssert(msg):
      echo msg & " - x is unknown."
      return (-1,2)
    doAssert stream.readInt64() == PNG_SIGNATURE

    stream.set_position(16)

    let width = stream.read_int32()
    let height = stream.read_int32()

    return ( width, height )
  else:
    return (-1,1)
