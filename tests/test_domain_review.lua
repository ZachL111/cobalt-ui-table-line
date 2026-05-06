package.path = "src/?.lua;" .. package.path
local review = require("domain_review")

local item = { signal = 46, slack = 28, drag = 24, confidence = 61 }
assert(review.score(item) == 109)
assert(review.lane(item) == "watch")
