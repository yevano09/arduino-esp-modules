local date_table = os.date("*t")
local ms = string.match(tostring(os.clock()), "%d%.(%d+)")
local hour, minute, second = date_table.hour, date_table.min, date_table.sec
local year, month, day = date_table.year, date_table.month, date_table.wday
local result = string.format("%d-%d-%d %d:%d:%d:%s", year, month, day, hour, minute, second, ms)

print(result)
-- will print the timestamp in the format you chose with milliseconds
-- should be all good, comment on this answer if anything's wrong please c: