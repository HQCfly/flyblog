<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/blogmvc/App/Admin/View/Public/Css/public.css" />
</head>
<body>
	<form action="<?php echo U(MODULE_NAME.'/Category/runAddCate');?>" method="post">
		<table class="table">
			<tr>
				<th colspan="2">添加栏目分类</th>
			</tr>
			<tr>
				<td>栏目名称</td>
				<td><input type="text" name="name" value=""></td>
			</tr>
			<tr>
				<td>排序</td>
				<td><input type="text" name="sort" value="100"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="hidden" name="pid" value="<?php echo ($pid); ?>">
					<input type="submit" value="保存添加">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>