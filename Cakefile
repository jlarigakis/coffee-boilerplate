fs = require 'fs'
path = require 'path'

task 'build', 'Generate a bundle using browserify', ->
  browserify      = require 'browserify'
  exorcist        = require 'exorcist' # extract source map to separate file
  entryPoint      = path.join(__dirname, 'src', 'main.coffee')
  destFile        = path.join(__dirname, 'public', 'bundle.js')
  mapFile         = destFile + '.map'
  createSourceMap = true

  browserify(
    entries: entryPoint
    debug: createSourceMap
    extensions: ['.coffee']
  )
    .bundle()
    .pipe(exorcist(mapFile))
    .pipe(fs.createWriteStream(destFile, 'utf8'))