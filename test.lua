local bcd = require 'bcd'

function test()
	local function print_hex(str)
		local basexx = require 'basexx'
		print(basexx.to_hex(str))
	end

	print_hex(bcd.encode(1234567890.00231))
	print_hex(bcd.encode(-1234567890.00231))
	print_hex(bcd.encode(1234567890.00231, "X.XXXX"))
	print_hex(bcd.encode(1234567890.00231, "X.X4"))
	print_hex(bcd.encode(1234567890.00231, "X6.X4"))
	print_hex(bcd.encode(12345.21))
	print_hex(bcd.encode(-12345.21))
	print_hex(bcd.encode(tostring(123456.12)))
	print_hex(bcd.encode(tostring(12345.21)))
	local r = bcd.encode(string.format("%11d", 123456))
	print_hex(r)
	print(bcd.decode(r))
	print(bcd.decode(r, "XXX.XX"))
	print(bcd.decode(r, "X3.X2"))
end

test()
