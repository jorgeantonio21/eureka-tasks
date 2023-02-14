create table if not exists cursors
(
    id           text not null constraint cursor_pk primary key,
    cursor       text,
    block_number bigint,
    block_hash   text
);