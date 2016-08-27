<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/header', TEMPLATE_INCLUDEPATH)) : (include template('common/header', TEMPLATE_INCLUDEPATH));?>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common', TEMPLATE_INCLUDEPATH)) : (include template('common', TEMPLATE_INCLUDEPATH));?>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('shopping_nav', TEMPLATE_INCLUDEPATH)) : (include template('shopping_nav', TEMPLATE_INCLUDEPATH));?>


<div class="main">
	<form action="" method="post" class="form-horizontal form" enctype="multipart/form-data" onsubmit='return formcheck()'>
		<input type="hidden" name="id" value="<?php  echo $adv['id'];?>" />
		<div class="panel panel-default">
			<div class="panel-heading">
				幻灯片设置
			</div>
			<div class="panel-body">
				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">排序</label>
					<div class="col-sm-9 col-xs-12">
						<input type="text" name="displayorder" class="form-control" value="<?php  echo $adv['displayorder'];?>" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label"><span style="color:red">*</span>幻灯片标题</label>
					<div class="col-sm-9 col-xs-12">
						<input type="text" id='advname' name="advname" class="form-control" value="<?php  echo $adv['advname'];?>" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">幻灯片图片</label>
					<div class="col-sm-9 col-xs-12">
						<?php  echo tpl_form_field_image('thumb', $adv['thumb'])?>
					</div>
				</div>
				 <div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">幻灯片连接</label>
					<div class="col-sm-9 col-xs-12">
						<input type="text" name="link" class="form-control" value="<?php  echo $adv['link'];?>" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">是否显示</label>
					<div class="col-sm-9 col-xs-12">
						<label class='radio-inline'>
							<input type='radio' name='enabled' value=1' <?php  if($adv['enabled']==1) { ?>checked<?php  } ?> /> 是
						</label>
						<label class='radio-inline'>
							<input type='radio' name='enabled' value=0' <?php  if($adv['enabled']==0) { ?>checked<?php  } ?> /> 否
						</label>
					</div>
				</div>
				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">所属小区</label>
					<div class="col-sm-9 col-xs-12">
						 <label class="checkbox-inline">  
		                    <input type="checkbox" id="checkAll" name="checkAll">全部
		                </label>
		                <?php  if(is_array($regions)) { foreach($regions as $region) { ?>
		                    <label class="checkbox-inline">
		                      <input type="checkbox" id="" value="<?php  echo $region['id'];?>" name='regionid[]' <?php  if(@in_array($region['id'], $regs)) { ?>checked='checked' <?php  } ?>> <?php  echo $region['title'];?>
		                    </label>
		                <?php  } } ?>
					</div>
				</div>
			</div>
		</div>
<div class="form-group col-sm-12">
	<input type="submit" name="submit" value="提交" class="btn btn-primary col-lg-1" />
	<input type="hidden" name="token" value="<?php  echo $_W['token'];?>" />
	</div>
	</form>
</div>

<script language='javascript'>
	function formcheck() {
		if ($("#advname").isEmpty()) {
			Tip.focus("advname", "请填写幻灯片名称!");
			return false;
		}
		return true;
	}
	$(function() {
	     $("#checkAll").click(function() {
	         $('input[name="regionid[]"]').attr("checked",this.checked); 
	     });
	});
</script>

<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/footer', TEMPLATE_INCLUDEPATH)) : (include template('common/footer', TEMPLATE_INCLUDEPATH));?>