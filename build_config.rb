MRuby::Build.new do |conf|
  toolchain :gcc

  enable_debug

  # Use standard Kernel#sprintf method
  conf.gem :core => "mruby-sprintf"

  # Use standard print/puts/p
  conf.gem :core => "mruby-print"

  # Use standard Math module
  conf.gem :core => "mruby-math"

  # Use standard Time class
  conf.gem :core => "mruby-time"

  # Use standard Struct class
  conf.gem :core => "mruby-struct"

  # Use extensional Enumerable module
  conf.gem :core => "mruby-enum-ext"

  # Use extensional String class
  conf.gem :core => "mruby-string-ext"

  # Use extensional Numeric class
  conf.gem :core => "mruby-numeric-ext"

  # Use extensional Array class
  conf.gem :core => "mruby-array-ext"

  # Use extensional Hash class
  conf.gem :core => "mruby-hash-ext"

  # Use extensional Range class
  conf.gem :core => "mruby-range-ext"

  # Use extensional Proc class
  conf.gem :core => "mruby-proc-ext"

  # Use extensional Symbol class
  conf.gem :core => "mruby-symbol-ext"

  # Use Random class
  conf.gem :core => "mruby-random"

  # Use extensional Object class
  conf.gem :core => "mruby-object-ext"

  # Use ObjectSpace class
  conf.gem :core => "mruby-objectspace"

  # Use Fiber class
  conf.gem :core => "mruby-fiber"

  # Use extended toplevel object (main) methods
  conf.gem :core => "mruby-toplevel-ext"

  # Use to Dir functions, used for mruby-require
  conf.gem "modules/mruby-hs-regexp"

  # Use to TestUnit
  conf.gem "modules/mruby-mtest"

  # Use to pack unpack functions
  conf.gem "modules/mruby-io"
  conf.gem "modules/mruby-pack"
  conf.gem "modules/mruby-sleep"
  conf.gem "modules/mruby-polarssl"
  conf.gem "modules/mruby-socket"
  conf.gem "modules/mruby-dir"
  conf.gem "modules/mruby-tempfile"
  conf.gem "modules/mruby-require"
  conf.gem "modules/mruby-qrcode"
  conf.gem "modules/mruby-miniz"
  conf.gem "modules/mruby-json"
  conf.gem "modules/mruby-context"
  conf.gem "modules/mruby-msgpack"

  conf.gembox 'default'
end
