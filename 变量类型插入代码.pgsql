INSERT INTO variable_types (symbol, abbreviation, unit_id, min_value, max_value, default_value, doc, doc_zh)
VALUES ('activation_energy_gezero', NULL, (SELECT id FROM units WHERE symbol = 'm'), 0.0, 1.0E12, 10000.0, NULL, NULL);
