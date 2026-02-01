-- Optional: speeds up qbx_core DELETE on player_groups (reduces slow-query warnings).
-- Run once on your DB if you see oxmysql/MariaDB slow-query logs for player_groups.
-- Table is from qbx_core; this index only makes lookups faster.

CREATE INDEX idx_player_groups_citizenid_type_group
ON player_groups (citizenid, type, `group`);
