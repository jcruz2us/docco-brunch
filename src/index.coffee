child_process = require 'child_process'

module.exports = class DoccoRunner
  brunchPlugin: yes
  type: 'javascript'
  extension: 'js'
  pattern: /src\/.+\.(js|coffee|litcoffee)/

  constructor: (@config) ->

  compile: (params, callback) ->
    execPath = 'node_modules/docco-brunch/node_modules/docco/bin/docco'
    command = "#{execPath} #{params.path}"

    child_process.exec command, (error, stdout, stderr) ->
      console.log "exec error: #{error}" if error?

    callback null, params
