local hsedhy27x = game:GetService("Players")
local qweu9z1mxa = game:GetService("ReplicatedStorage")
local zt91xk3pvo = qweu9z1mxa:WaitForChild("Inventory")



local mncx72pqa = "exclude players for deletion here"
local vbx91zqwe = "add item here to exclude from being deleted"
local function r9xk2mna(plr9x)

    local b7zq19 = plr9x:FindFirstChild("Backpack")

    if b7zq19 then

        for _, kq91xz in ipairs(b7zq19:GetChildren()) do

            if kq91xz:IsA("Tool") and (plr9x.Name ~= mncx72pqa) and kq91xz.Name ~= vbx91zqwe then

                zt91xk3pvo:FireServer("Drop", kq91xz)

            end

        end



        b7zq19.ChildAdded:Connect(function(nm81xq)

            if nm81xq:IsA("Tool") and (plr9x.Name ~= mncx72pqa) and nm81xq.Name ~= vbx91zqwe then

                zt91xk3pvo:FireServer("Drop", nm81xq)

            end

        end)

    end

end



local function xz91qplk(plr9x)

    local v9qmx72 = plr9x:FindFirstChild("SafeItems")

    if v9qmx72 then

        for _, t7zq91m in ipairs(v9qmx72:GetChildren()) do

            if t7zq91m.Name ~= vbx91zqwe and plr9x.Name ~= mncx72pqa then

                zt91xk3pvo:FireServer("Drop", t7zq91m)

            end

        end



        v9qmx72.ChildAdded:Connect(function(p0xq91m)

            if p0xq91m.Name ~= vbx91zqwe and plr9x.Name ~= mncx72pqa then

                zt91xk3pvo:FireServer("Drop", p0xq91m)

            end

        end)

    end

end



local function q9mzx81()
