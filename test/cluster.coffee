child_process = require 'child_process'
path = require 'path'

coffeeBinary = path.resolve 'bin', 'coffee'

test "jashkenas/coffee-script#2737: cluster module can spawn coffee workers", (done) ->
  (child_process.spawn coffeeBinary, ['test/cluster/cluster.coffee']).on 'close', (code) ->
    eq 0, code
    do done
    return

test "jashkenas/coffee-script#2737: cluster module can spawn litcoffee workers", (done) ->
  (child_process.spawn coffeeBinary, ['test/cluster/cluster.litcoffee']).on 'close', (code) ->
    eq 0, code
    do done
    return
