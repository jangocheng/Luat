--- 模块功能：testTask
-- @module test
-- @author openLuat
-- @license MIT
-- @copyright openLuat
-- @release 2017.02.17
require "gps"
require "agps"
module(..., package.seeall)
gps.setup()

sys.taskInit(function()
    gps.open()
    sys.wait(2000)
    while true do
        log.info("AGPS update-gpd status:", gps.update(agps.getGPD()))
        agps.refresh(30000)
        sys.wait(60000)
    end
end)