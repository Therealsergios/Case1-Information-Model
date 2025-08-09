CREATE TABLE pipe_passps (
    id CHAR(6) PRIMARY KEY,
    UUID CHAR(36) NOT NULL,
    dep_num INT NOT NULL,
    area_name VARCHAR(50) NOT NULL,
    class VARCHAR(50) NOT NULL,
    name VARCHAR(50) NOT NULL,
    experiment_type VARCHAR(50),
    ex_pressure FLOAT,
    exp_pressure FLOAT,
    work_pressure FLOAT,
    inv_num INT,
    pipe_level INT,
    environment_name VARCHAR(50),
    rev_period FLOAT,
    work_temp FLOAT,
    tag VARCHAR(50) NOT NULL,
    dn INT,
    do INT,
    length FLOAT,
    create_date DATE NOT NULL DEFAULT CURRENT_DATE,
    arch VARCHAR(50) NOT NULL DEFAULT 'active',
    user_id CHAR(6) NOT NULL
);

INSERT INTO pipe_passps (
    id, UUID, dep_num, area_name, class, name, experiment_type,
    ex_pressure, exp_pressure, work_pressure,
    inv_num, pipe_level, environment_name,
    rev_period, work_temp, tag, dn, do, length, create_date
) VALUES
('123456', 'aca1e7f0-a242-f011-85e0-7446a0ab6ea0', 14, 'MCK', 'Pipeline', '073', 'Hydraulic', 12.30, 15.40, 4.90, 120362, 2, 'Naphtha', 3.00, 35.00, 'ptp041', 100, 110, 600.0, '2020-02-24', 'active', '123456'),
('123654', 'fff0a50a-a342-f011-85e0-7446a0ab6ea0', 14, 'MCK', 'Pipeline', '090', 'Hydraulic', 12.00, 15.53, 12.00, 110790, 3, 'Gazoline', 3.00, 90.00, 'btp041', 150, 160, 850.0, '2020-04-10', 'active', '123654'),
('654321', 'b1a1e7f0-a242-f011-85e0-7446a0ab6ea0', 14, 'MCK', 'Pipeline', '092A', 'Hydraulic', 16.00, 20.70, 6.50, 175648, 4, 'Fraction', 3.00, 50.00, 'ftp041', 120, 132, 450.7, '2020-04-10', 'active', '123456'),
('111222', '678db6fa-a242-f011-85e0-7446a0ab6ea0', 14, 'MCK', 'Pipeline', '092B', 'Hydraulic', 16.00, 20.70, 6.50, 175648, 4, 'Fraction', 3.00, 50.00, 'ftp042', 120, 132, 320.0, '2020-04-10', 'active', '123654'),
('222333', '6c8db6fa-a242-f011-85e0-7446a0ab6ea0', 14, 'MCK', 'Pipeline', '094', 'Hydraulic', 16.40, 21.20, 5.90, 175648, 2, 'Gazoline', 3.00, 40.00, 'btp031', 150, 160, 515.4, '2021-09-14', 'active', '123654'),
('333444', '825b3502-a342-f011-85e0-7446a0ab6ea0', 14, 'MCK', 'Pipeline', '097', 'Hydraulic', 14.00, 20.60, 5.90, 175648, 2, 'Steam', 3.00, 40.00, 'ptp042', 100, 110, 100.0, '2020-04-10', 'active', '123456'),
('444555', '875b3502-a342-f011-85e0-7446a0ab6ea0', 14, 'MCK', 'Pipeline', '098', 'Hydraulic', 11.00, 14.60, 5.90, 175648, 2, 'Fraction', 3.00, 50.00, 'ftp021', 150, 160, 50.0, '2019-02-01', 'active', '123456'),
('555666', 'faf0a50a-a342-f011-85e0-7446a0ab6ea0', 14, 'MCK', 'Pipeline', '099', 'Hydraulic', 16.00, 22.10, 6.00, 175648, 1, 'Gazoline', 3.00, 40.00, 'btp032', 140, 152, 100.0, '2024-12-20', 'active', '123456'),
('666111', 'e8049ee4-a242-f011-85e0-7446a0ab6ea0', 14, 'MCK', 'Pipeline', '017B', 'Pneumatic', 64.00, 82.82, 64.00, 120333, 1, 'Air', 6.00, 40.00, 'atp021', 100, 110, 40.5, '2023-06-03', 'active', '123456');