local lfs = require"lfs"
function attrdir (path)
	test=""
    for file in lfs.dir(path) do
        if file ~= "." and file ~= ".." then
			test=test..file..'\n'
        end
    end
	writefile(test)
end

function writefile(test)
	file=io.open("1_config.txt","w")
	file:write(test)
	file:close()
end

attrdir ("D:\\one_punch\\art\\1.����ģ��\\1.��ߴ�480x480")

