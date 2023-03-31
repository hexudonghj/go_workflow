create table act_hi_procinst
(
    id              bigint unsigned not null auto_increment comment '自增主键ID',
    proc_inst_id    varchar(256) not null default '' comment '流程实例ID',
    proc_def_id     varchar(256) not null default '' comment '流程定义ID',
    proc_def_key    varchar(256) not null default '' comment '流程定义KEY',
    proc_start_time bigint       not null default -1 comment '流程开始时间',
    proc_end_time   bigint       not null default -1 comment '流程结束时间（如果流程未结束则为-1）',
    start_user_id   varchar(256) not null default '' comment '流程发起人ID',
    status          varchar(16)  not null default '' comment '流程状态',
    create_time     datetime     not null default current_timestamp comment '数据创建时间',
    update_time     datetime     not null default current_timestamp on update current_timestamp comment '数据更新时间',
    primary key (id),
    unique key uniq_proc_inst_id (proc_inst_id) comment '流程实例ID唯一索引'
) default charset = utf8mb4 engine = InnoDB comment '流程实例表';