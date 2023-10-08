module Units
using LibPQ
const db_config = Dict(
    "host" => "58.206.100.50",
    "port" => 5432,
    "dbname" => "ai4e-digitaltwins-postgres",
    "user" => "ai4e_digitaltwins",
    "password" => "dlgcdxlgjzdsys123456"
)

function __init__()
    println("Ai4Energy Units is being initialized.")
    # 在这里可以添加需要执行的初始化操作


    # 建立数据库连接字符串
    conn_str = "host=$(db_config["host"]) port=$(db_config["port"]) dbname=$(db_config["dbname"]) user=$(db_config["user"]) password=$(db_config["password"])"

    # 使用连接字符串来建立连接
    conn = LibPQ.Connection(conn_str)

    # 需要用函数获取当前目录，然后组织文件路径

    units_table_sql_file_path = "./datasql/units.sql"

    open(units_table_sql_file_path, "r") do file
        global sql_units_table_init = read(file, String)
    end

    result = LibPQ.execute(conn, sql_units_table_init)
end

module SI

end
module nonSI

end

end