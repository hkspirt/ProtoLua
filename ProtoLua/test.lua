local protobuf = require "protobuf"

addr = io.open("addressbook.pb","rb")
buffer = addr:read "*a"
addr:close()
protobuf.register(buffer)

--ππ‘Ïmessage
local person = {
	name = "Alice",
	id = 123,
	phone = {
		{ number = "123456789" , type = "MOBILE" },
		{ number = "87654321" , type = "HOME" },
	}
}

--±‡¬Î
local buffer = protobuf.encode("tutorial.Person", person)

--Ω‚¬Î
local t = protobuf.decode("tutorial.Person", buffer)

for k,v in pairs(t) do
	if type(k) == "string" then
		print(k,v)
	end
end

phoneList = t.phone
for k,v in pairs(phoneList) do
	print(k, v)
	print("type="..v.type, "number="..v.number)
end
