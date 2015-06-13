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
  conf.gem "mrbgems/mruby-hs-regexp"

  # Use to TestUnit
  conf.gem "mrbgems/mruby-mtest"

  # Use to pack unpack functions
  conf.gem "mrbgems/mruby-io"
  conf.gem "mrbgems/mruby-pack"
  conf.gem "mrbgems/mruby-sleep"
  conf.gem "mrbgems/mruby-polarssl"
  conf.gem "mrbgems/mruby-socket"
  conf.gem "mrbgems/mruby-dir"
  conf.gem "mrbgems/mruby-tempfile"
  conf.gem "mrbgems/mruby-require"
  conf.gem "mrbgems/mruby-qrcode"
  conf.gem "mrbgems/mruby-miniz"
  conf.gem "mrbgems/mruby-json"
  conf.gem "mrbgems/mruby-context"
  conf.gem "mrbgems/mruby-msgpack"

  # conf.gem 'mrbgems/mruby-dir'
  # conf.gem 'mrbgems/mruby-io'
  # conf.gem 'mrbgems/mruby-mtest'
  # conf.gem 'mrbgems/mruby-pack'
  # conf.gem 'mrbgems/mruby-polarssl'
  # conf.gem 'mrbgems/mruby-print'
  # conf.gem 'mrbgems/mruby-regexp-pcre'
  # # conf.gem 'mrbgems/mruby-require'
  # conf.gem 'mrbgems/mruby-socket'
  # conf.gem 'mrbgems/mruby-tempfile'

  conf.gembox 'default'
end
