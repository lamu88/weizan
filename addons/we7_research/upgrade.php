<?php
if(!pdo_fieldexists('research_fields', 'displayorder')) {
	pdo_query("ALTER TABLE ".tablename('research_fields')." ADD `displayorder` INT(11) UNSIGNED NOT NULL DEFAULT '0';");
}