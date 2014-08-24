express = require 'express'

express()
  .use express.static(__dirname + '/public')
  .listen process.env.PORT || 3000, ->
    console.log "listening on port #{@address().port}"
