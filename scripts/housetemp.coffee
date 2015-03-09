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
    robot.http("http://up.jamesnweber.com/_sandbox/stat/current?q=inside")
    .get() (err, res, body) ->
      if err
        msg.send "Encountered an error :( #{err}"
        return
      else
      	msg.send "The house is #{body}"