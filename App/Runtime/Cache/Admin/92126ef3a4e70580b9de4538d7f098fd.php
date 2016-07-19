<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/blogmvc/App/Admin/View/Public/Css/public.css" />
</head>
<body>
	<form action="<?php echo U(MODULE_NAME.'/Blog/runAddBlog');?>" method="post">
		<table class="table">
			<tr>
				<th colspan="2">添加博文</th>
			</tr>
			<tr>
				<td align="right">所属分类</td>
				<td>
					<select name="cid">
						<option value="">==请选择分类==</option>
						<?php if(is_array($cate)): foreach($cate as $key=>$v): ?><option value="<?php echo ($v["id"]); ?>"><?php echo ($v["html"]); echo ($v["name"]); ?></option><?php endforeach; endif; ?>
					</select>
				</td>
			</tr>
			<tr>
				<td align="right">博文属性</td>
				<td>
					<?php if(is_array($attr)): foreach($attr as $key=>$v): ?><label style="margin-right:10px;">
						<input type="checkbox" name="aid[]" value="<?php echo ($v["id"]); ?>"> <?php echo ($v["name"]); ?>
					</label><?php endforeach; endif; ?>
				</td>
			</tr>
			<tr>
				<td align="right">点击次数</td>
				<td>
					<input type="text" name="click" value="100">
				</td>
			</tr>
			<tr>
				<td align="right">标题</td>
				<td>
					<input type="text" name="title" value="">
				</td>
			</tr>
			<tr>
				<td align="right">摘要</td>
				<td>
					<input type="text" name="summary" value="">
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<textarea id="content" name="content"></textarea>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="添加">
				</td>
			</tr>
		</table>
	</form>
	
<script type="text/javascript" src="/blogmvc/App/Admin/View/Public/ueditor/ueditor.config.js"></script>
<script type="text/javascript" src="/blogmvc/App/Admin/View/Public/ueditor/ueditor.all.js"></script>
<script type="text/javascript">
	//window.UEDITOR_CONFIG.serverUrl = "<?php echo U(MODULE_NAME.'/Blog/upload');?>";
	imagePathFormat: "/ueditor/php/upload/image/{yyyy}{mm}{dd}/{time}{rand:6}";
	var ue = UE.getEditor('content');
</script>
</body>
</html>