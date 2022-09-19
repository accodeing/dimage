# Package

version       = "0.1.0"
author        = "Jonas Schubert Erlandsson"
description   = "Pure Nim, no external dependensies image dimension reader for all web supported image formats"
license       = "LGPL-3.0-only"
srcDir        = "src"
skipDirs      = @["tests"]
installExt    = @["nim"]
bin           = @["dimage"]


# Dependencies

requires "nim >= 1.6.0"
requires "cligen >= 1.5.28"
