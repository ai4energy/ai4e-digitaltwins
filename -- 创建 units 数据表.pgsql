-- 创建 units 数据表
CREATE TABLE units (
    id SERIAL PRIMARY KEY,
    symbol VARCHAR(50) UNIQUE NOT NULL,  -- 单位的符号
    abbreviation VARCHAR(50),  -- 单位的简写
    name VARCHAR(100),  -- 单位的全名
    equivalent VARCHAR(100),  -- 单位的等效表达式或转换因子
    uses_scientific_notation BOOLEAN,  -- 是否采用科学计数法
    doc TEXT,  -- 英文文档或描述
    doc_zh TEXT  -- 简体中文文档或描述
);
