io.write("Enter the amount of rows: ")
local row = io.read("*number")
io.write("Enter the amount of columns: ")
local col = io.read("*number")

local matrix = {}
for i = 1, row do
    matrix[i] = {}
    for j = 1, col do
        io.write(string.format("[%i][%i] = ", i, j))
        matrix[i][j] = io.read("*number")
    end
end

io.write("\n")
local line = "\\begin{bmatrix}"

for i = 1, row do
    for j = 1, col do
        line = line .. " " .. tostring(matrix[i][j])
        if j ~= col then
            line = line .. " &"
        end
    end
    line = line .. " \\\\ "
end
line = line .. "\\end{bmatrix}"
print(line)