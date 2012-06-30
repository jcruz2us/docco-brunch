sysPath = require 'path'

docco = require './lib/docco.js'


module.exports = class DoccoRunner
  brunchPlugin: yes
  type: 'javascript'
  extension: 'js'

  constructor: (@config) ->
    null

  compile: (data, path, callback) ->
    try
      callback null, data
    catch error
      callback error
