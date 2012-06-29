sysPath = require 'path'
docco = require 'docco'


module.exports = class DoccoRunner
  brunchPlugin: yes
  type: 'javascript'
  extension: 'js'

  constructor: (@config) ->
    null

  compile: (data, path, callback) ->
  	 try
      docco.generate_documentation path
    catch error
      callback error