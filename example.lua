local function test_normal() -- Ran 6.858s on my dev server
	local time = os.clock()
	local str = ""
	for i = 1, 250000 do
		str = str .. "x"
	end
	local elapsed = os.clock() - time
	print("Normal Elapsed:", elapsed)
end

local function test_sb() -- Ran  0.012999999999998s on my dev server
	local time = os.clock()
	local sb = StringBuilder.new()
	for i = 1, 250000 do
		sb:append("x")
	end
	local elapsed = os.clock() - time
	print("SB Elapsed:", elapsed)
end

concommand.Add("run_normal", test_normal)
concommand.Add("run_sb", test_sb)
