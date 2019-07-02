

-- 用户表
drop table if exists `chat_user`;
create table `chat_user`(
	`id` int(11) not null primary key auto_increment comment "主键id",
	`name` varchar(30) not null default '' comment "用户名",
	`avatar` varchar(200) not null default '' comment '头像',
	`create_at` int(11) not null default 0 comment '创建时间',
	`update_at` int(11) not null default 0 comment '更新时间'
)engine=innodb default charset=utf8;

-- 聊天记录表
drop table if exists `chat_record`;
create table `chat_record`(
	`id` int(11) not null primary key auto_increment comment "主键id",
	`from_id` int(11) not null comment '发送者id',
	`from_name` varchar(30) not null default '' comment "发送者用户名",
	`to_id` int(11) not null comment '接收者id',
	`to_name` varchar(30) not null default '' comment "接收者用户名",
	`content` varchar(1024) not null comment '聊天内容',
	`type` tinyint(2) not null default 1 comment'发送类型1文本，2图片，3bind',
	`is_read` tinyint(2) not null default 0 comment '是否已读0已读，1未读',
	`create_at` int(11) not null default 0 comment '创建时间'
)engine=innodb default charset=utf8;