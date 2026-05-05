package.path = "src/?.lua;" .. package.path
local policy = require("policy")

local signal_case_1 = { demand = 58, capacity = 95, latency = 15, risk = 11, weight = 6 }
assert(policy.score(signal_case_1) == 147)
assert(policy.classify(signal_case_1) == "review")
local signal_case_2 = { demand = 94, capacity = 78, latency = 16, risk = 13, weight = 11 }
assert(policy.score(signal_case_2) == 219)
assert(policy.classify(signal_case_2) == "accept")
local signal_case_3 = { demand = 68, capacity = 101, latency = 17, risk = 19, weight = 13 }
assert(policy.score(signal_case_3) == 169)
assert(policy.classify(signal_case_3) == "accept")
