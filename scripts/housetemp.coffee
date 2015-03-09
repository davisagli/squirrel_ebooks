# Description:
#   None
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   House temp
#
# Author:
#   jamessw

module.exports = (robot) ->
  robot.hear /.*(house\s*|temp\s+).*/i, (msg) ->
    callback = (response) -> msg.send "It's currently " + response
    $.get 'http://up.jamesnweber.com/_sandbox/stat/current?q=inside', callback, 'json'