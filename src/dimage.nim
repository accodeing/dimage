import std/os
import tables

import dimagepkg/[gif, heic, jpeg, png, webp]

type
  MimeType* {.pure.} = enum
    APNG = "image/apng",
    AVIF = "image/avif",
    AVIFS = "image/avifs",
    BMP = "image/bmp", # !!
    GIF = "image/gif", # !
    HEIC = "image/heic",
    ICO = "image/x-icon", # !!
    JPEG = "image/jpeg", # !
    JP2 = "image/jp2", # ! JPEG2000
    JPEGXL = "image/jxl",
    PNG = "image/png", # !
    SVG = "image/svg+xml",
    TIFF = "image/tiff", # !!!
    WebP = "image/webp",
    WebP2 = "image/webp2",
    Unknown = "image/*"

var types = {
  "apng":  APNG,
  "avif":  AVIF,
  "bmp":   BMP,
  "gif":   GIF,
  "heic":  HEIC,
  "heif":  HEIC,
  "ico":   ICO,
  "cur":   ICO,
  "jp2":   JP2,
  "jpg":   JPEG,
  "jpeg":  JPEG,
  "jfif":  JPEG,
  "pjpeg": JPEG,
  "pjp":   JPEG,
  "jxl":   JPEGXL,
  "png":   PNG,
  "svg":   SVG,
  "tif":   TIFF,
  "tiff":  TIFF,
  "webp":  WebP,
  "wp2":   WebP2,
}.toTable

proc get_mime_type*( path:string ): MimeType =
  var extension = split_file( path ).ext[1..^1]
  types.get_or_default( extension, MimeType.Unknown )

proc get_size*( path:string ): (int,int) =
  var mime_type = get_mime_type( path )

  case mime_type:
  of HEIC:
    return heic.get_size( path )
  of GIF:
    return gif.get_size( path )
  of JPEG:
    return jpeg.get_size( path )
  of PNG,APNG:
    return png.get_size( path )
  of WEBP:
    return webp.get_size( path )
  else:
    return (-1,1)

proc main(args: seq[string]) =
  for path in args:
    echo $get_mime_type( path )
    #var (width, height) = get_size( path )
    var (width, height) = get_size( path )
    if width != -1:
      echo "width " & $width & "px, height " & $height & "px"
    else:
      echo "Unsupported mime type"
  quit(0)

when isMainModule:
  import cligen; dispatch main
