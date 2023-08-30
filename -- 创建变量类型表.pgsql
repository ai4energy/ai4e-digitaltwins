-- 创建变量类型表
CREATE TABLE variable_types (
    id SERIAL PRIMARY KEY,
    symbol VARCHAR(50) UNIQUE NOT NULL,  -- 变量类型的符号
    abbreviation VARCHAR(50),  -- 变量类型的简写
    unit_id INTEGER REFERENCES units(id),  -- 关联的单位ID
    min_value DOUBLE PRECISION,  -- 最小值
    max_value DOUBLE PRECISION,  -- 最大值
    default_value DOUBLE PRECISION,  -- 默认值
    doc TEXT,  -- 英文文档或描述
    doc_zh TEXT  -- 简体中文文档或描述
);
