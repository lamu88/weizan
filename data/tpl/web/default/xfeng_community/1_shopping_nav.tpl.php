<?php defined('IN_IA') or exit('Access Denied');?>
<ul class="nav nav-tabs">
	<li <?php  if($op == 'order') { ?>class="active"<?php  } ?>><a href="<?php  echo $this->createWebUrl('shopping', array('op' => 'order'));?>">订单管理</a></li>
	<li <?php  if($op == 'goods') { ?>class="active"<?php  } ?>><a href="<?php  echo $this->createWebUrl('shopping', array('op' => 'goods'));?>">商品管理</a></li>
	<li <?php  if($op == 'category') { ?>class="active"<?php  } ?>><a href="<?php  echo $this->createWebUrl('shopping', array('op' => 'category'))?>">商品分类</a></li>
	<li <?php  if($op == 'express') { ?>class="active"<?php  } ?>><a href="<?php  echo $this->createWebUrl('shopping', array('op' => 'express'));?>">物流管理</a></li>
	<li <?php  if($op == 'dispatch') { ?>class="active"<?php  } ?>><a href="<?php  echo $this->createWebUrl('shopping', array('op' => 'dispatch'));?>">配送方式</a></li>
	<li <?php  if($op == 'slide') { ?>class="active"<?php  } ?>><a href="<?php  echo $this->createWebUrl('shopping', array('op' => 'slide'));?>">幻灯管理</a></li>
	<li <?php  if($op == 'notice') { ?>class="active"<?php  } ?>><a href="<?php  echo $this->createWebUrl('shopping', array('op' => 'notice'));?>">维权与告警</a></li>
</ul>
