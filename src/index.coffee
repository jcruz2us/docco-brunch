sysPath = require 'path'
docco = require 'docco'


module.exports = class DoccoRunner
  brunchPlugin: yes
  type: 'documentation'
  extension: 'js'

  constructor: (@config) ->
    null

  doccofy: (data, path, callback) ->
      docco.generate_documentation(path)