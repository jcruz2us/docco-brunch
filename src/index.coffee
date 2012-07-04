sysPath = require 'path'

child_process = require 'child_process'

module.exports = class DoccoRunner
  brunchPlugin: yes
  type: 'javascript'
  extension: 'js'

  constructor: (@config) ->
    console.log "Docco Starting...."
    console.log "Processing: " + process.cwd()
    child_process.exec  "node_modules/docco-brunch/node_modules/docco/bin/./docco " + process.cwd() + "/app/*.js", { cwd : process.cwd() } , (error, stdout, stderr) ->
        console.log "stdout: " + stdout
        console.log "stderr: " + stderr
        console.log "exec error: " + error  if error isnt null