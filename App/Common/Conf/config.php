<?php
return array(
	//'配置项'=>'配置值'
	//数据库配置
	'DB_TYPE' => 'mysql',
	'DB_HOST' => 'localhost',
	'DB_USER' => 'km7sirilmx_a35d',
	'DB_PWD'  => 'H2UjkbP3EL',
	'DB_NAME' => 'km7sirilmx_a35d',
	'DB_PREFIX' => 'admin_',
	'DB_CHARSET' => 'utf8',
	'DB_PORT' => '3306',
		
	'MODULE_ALLOW_LIST' => array('Home','Admin'),//必然设置 不然路由无法使用，不知道为什么
		'SHOW_PAGE_TRACE' =>true,
);