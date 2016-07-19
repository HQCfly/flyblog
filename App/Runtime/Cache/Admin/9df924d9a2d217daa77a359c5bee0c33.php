<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<script type="text/javascript" src="/blogmvc/App/Admin/View/Public/Js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="/blogmvc/App/Admin/View/Public/Js/index.js"></script>
<link rel="stylesheet" href="/blogmvc/App/Admin/View/Public/Css/public.css" />
<link rel="stylesheet" href="/blogmvc/App/Admin/View/Public/Css/index.css" />
<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
<base target="iframe"/>
<head>
</head>
<body>
	<div id="top">
		<!-- <div class="menu">
			<a href="#">选择按钮</a>
			<a href="#">选择按钮</a>
			<a href="#">选择按钮</a>
			<a href="#">选择按钮</a>
			<a href="#">选择按钮</a>
		</div> -->
		<div class="exit">
			<a href="<?php echo U(MODULE_NAME.'/Index/logout');?>" target="_self">退出</a>
			<a href="/blogmvc" target="_blank">前台主页</a>
			<a href="http://www.hqcfly.com" target="_blank">张一飞博客</a>
		</div>
	</div>
	<div id="left">
		<dl>
			<dt>博文管理</dt>
			<dd><a href="<?php echo U(MODULE_NAME.'/Blog/index');?>">博文列表</a></dd>
			<dd><a href="<?php echo U(MODULE_NAME.'/Blog/addBlog');?>">添加博文</a></dd>
			<dd><a href="<?php echo U(MODULE_NAME.'/Blog/trash');?>">回收站</a></dd>
		</dl>
		<dl>
			<dt>属性管理</dt>
			<dd><a href="<?php echo U(MODULE_NAME.'/Attribute/index');?>">属性列表</a></dd>
			<dd><a href="<?php echo U(MODULE_NAME.'/Attribute/addAttr');?>">添加属性</a></dd>
		</dl>
		<dl>
			<dt>分类管理</dt>
			<dd><a href="<?php echo U(MODULE_NAME.'/Category/index');?>">分类列表</a></dd>
			<dd><a href="<?php echo U(MODULE_NAME.'/Category/addCate');?>">添加分类</a></dd>
		</dl>
		<dl>
			<dt>友情链接管理</dt>
			<dd><a href="<?php echo U(MODULE_NAME.'/Links/index');?>">友情链接列表</a></dd>
			<dd><a href="<?php echo U(MODULE_NAME.'/Links/addLink');?>">添加友情链接</a></dd>
		</dl>
	</div>
	<div id="right">
		<iframe name="iframe" src="#"></iframe>
	</div>
</body>
</html>