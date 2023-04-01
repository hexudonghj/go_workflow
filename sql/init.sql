create table act_hi_procinst
(
    id            bigint unsigned not null auto_increment comment '自增主键ID',
    proc_inst_id  varchar(256)    not null default '' comment '流程实例ID',
    proc_def_id   varchar(256)    not null default '' comment '流程定义ID',
    start_time    bigint          not null default -1 comment '流程开始时间',
    end_time      bigint          not null default -1 comment '流程结束时间（如果流程未结束则为-1）',
    start_user_id varchar(256)    not null default '' comment '流程发起人ID',
    status        varchar(16)     not null default '' comment '流程状态',
    tenant_id     varchar(256)    not null default '' comment '',
    create_time   datetime        not null default current_timestamp comment '数据创建时间',
    update_time   datetime        not null default current_timestamp on update current_timestamp comment '数据更新时间',
    primary key (id),
    unique key uniq_proc_inst_id (proc_inst_id) comment '流程实例ID唯一索引',
    index idx_start_time(start_time) comment '流程实例开始时间索引'
) engine = InnoDB
  default charset = utf8mb4 comment '流程实例表';


create table act_re_procdef
(
    id           bigint unsigned not null auto_increment comment '自增主键',
    proc_def_id  varchar(256)    not null default '' comment '流程定义ID',
    proc_def_key varchar(256)    not null default '' comment '流程定义KEY',
    name         varchar(256)    not null default '' comment '流程名称',
    version      int             not null default 0 comment '流程版本号',
    resource     longtext                 default null comment '流程定义资源',
    tenant_id    varchar(256)    not null default '' comment '租户ID',
    user_id      varchar(256)    not null default '流程所属用户ID',
    deploy_time  bigint          not null default -1 comment '流程部署时间',
    create_time  datetime        not null default current_timestamp comment '数据创建时间',
    update_time  datetime        not null default current_timestamp on update current_timestamp comment '流程更新时间',
    primary key (id),
    unique key uniq_proc_def_id(proc_def_id) comment '流程定义ID唯一ID',
    unique key uniq_proc_def_id_tenant_id (`proc_def_key`, `tenant_id`, `version`) comment '流程定义KEY、租户ID、版本唯一索引'
) engine = InnoDB
  default charset = utf8mb4 comment '流程定义表';