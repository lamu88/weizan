<?php

defined('IN_IA') or exit('Access Denied');

class Weihaom_wbModuleSite extends WeModuleSite {

    public function doMobileIndex() {
        global $_W, $_GPC;
        checkauth();
        load()->model('mc');
        $fromuser = mc_require($_W['member']['uid'], array('nickname', 'mobile'), '需要完善资料后才能玩.');
        $fromuser['openid'] = $_W['fans']['from_user'];
        $rid = $_GPC['rid'];
        $follow = pdo_fetchcolumn("select follow from " . tablename('mc_mapping_fans') . " where openid=:openid limit 1", array(':openid' => $fromuser['openid']));
        $user = pdo_fetch("select * from" . tablename('weihaom_wb_user') . "where rid =" . $rid . ".and from_user ='" . $fromuser['openid'] . "'");
        if ($follow == 1) {
            if (intval($_GPC['id'])) {
                $score = intval($_GPC['score']);
                if ($user['score'] < $score) {
                    $update = array('score' => $score);
                    $user['score'] = $score;
                    pdo_update('weihaom_wb_user', $update, array('id' => $_GPC['id'], 'weid' => $_W['uniacid']));
                }
                message($user['score'], '', 'ajax');
            }
            $from_user = pdo_fetch("select id from_user, rid from" . tablename('weihaom_wb_user') . "where from_user ='" . $fromuser['openid'] . "'");
            if (empty($from_user['from_user'])) {
                $insert = array(
                    'id' => $_GPC['id'],
                    'weid' => $_W['uniacid'],
                    'rid' => $rid,
                    'from_user' => $fromuser['openid'],
                    'realname' => $fromuser['nickname'],
                    'score' => 0
                );
                pdo_insert('weihaom_wb_user', $insert);
                $user = array('id' => pdo_insertid());
            }
            $realname = $fromuser['nickname'];

        }
        $set = pdo_fetch("select * from" . tablename('weihaom_wb_reply') . "where rid =" . $rid);
        include $this->template('index');
    }

    public function doMobilePhb() {
        global $_W, $_GPC;
        $rid = $_GPC['rid'];

        $set = pdo_fetch("select * from" . tablename('weihaom_wb_reply') . "where rid =" . $rid);
        $users = pdo_fetchall("select * from" . tablename('weihaom_wb_user') . " where rid={$rid} order by score desc limit 10");

        include $this->template('phb');
    }

    public function doWebuserlist(){
        global $_W,$_GPC;
        $rid = intval($_GPC['id']);
        $pindex = max(1, intval($_GPC['page']));
        $psize = 20;
        $sql = 'SELECT * FROM ' . tablename('weihaom_wb_user') . " WHERE `rid`=:rid order by score DESC LIMIT " . ($pindex - 1) * $psize . ',' . $psize;
        $params = array();
        $params[':rid'] = $rid;
        $total = pdo_fetchcolumn("SELECT COUNT(*) FROM " . tablename('weihaom_wb_user') . " WHERE  `rid`=:rid", $params);
        $pager = pagination($total, $pindex, $psize);

        $list = pdo_fetchall($sql, $params);
        $n = ($pindex -1)  * $psize;
        foreach($list as &$row){
            $row['rank'] = ++$n;
        }
        unset($row);
        include $this->template('userlist');
    }
}
