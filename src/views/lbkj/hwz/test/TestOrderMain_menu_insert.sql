-- 注意：该页面对应的前台目录为views/Test文件夹下
-- 如果你想更改到其他目录，请修改sql中component字段对应的值


INSERT INTO sys_permission(id, parent_id, name, url, component, component_name, redirect, menu_type, perms, perms_type, sort_no, always_show, icon, is_route, is_leaf, keep_alive, hidden, hide_tab, description, status, del_flag, rule_flag, create_by, create_time, update_by, update_time, internal_or_external) 
VALUES ('2022121211349670520', NULL, '测试订单主表', '/Test/testOrderMainList', 'Test/TestOrderMainList', NULL, NULL, 0, NULL, '1', 1.00, 0, NULL, 1, 1, 0, 0, 0, NULL, '1', 0, 0, 'admin', '2022-12-12 11:34:52', NULL, NULL, 0);

-- 权限控制sql
-- 新增
INSERT INTO sys_permission(id, parent_id, name, url, component, is_route, component_name, redirect, menu_type, perms, perms_type, sort_no, always_show, icon, is_leaf, keep_alive, hidden, hide_tab, description, create_by, create_time, update_by, update_time, del_flag, rule_flag, status, internal_or_external)
VALUES ('2022121211349670521', '2022121211349670520', '添加测试订单主表', NULL, NULL, 0, NULL, NULL, 2, 'org.jeecg.modules.hwz:test_order_main:add', '1', NULL, 0, NULL, 1, 0, 0, 0, NULL, 'admin', '2022-12-12 11:34:52', NULL, NULL, 0, 0, '1', 0);
-- 编辑
INSERT INTO sys_permission(id, parent_id, name, url, component, is_route, component_name, redirect, menu_type, perms, perms_type, sort_no, always_show, icon, is_leaf, keep_alive, hidden, hide_tab, description, create_by, create_time, update_by, update_time, del_flag, rule_flag, status, internal_or_external)
VALUES ('2022121211349670522', '2022121211349670520', '编辑测试订单主表', NULL, NULL, 0, NULL, NULL, 2, 'org.jeecg.modules.hwz:test_order_main:edit', '1', NULL, 0, NULL, 1, 0, 0, 0, NULL, 'admin', '2022-12-12 11:34:52', NULL, NULL, 0, 0, '1', 0);
-- 删除
INSERT INTO sys_permission(id, parent_id, name, url, component, is_route, component_name, redirect, menu_type, perms, perms_type, sort_no, always_show, icon, is_leaf, keep_alive, hidden, hide_tab, description, create_by, create_time, update_by, update_time, del_flag, rule_flag, status, internal_or_external)
VALUES ('2022121211349670523', '2022121211349670520', '删除测试订单主表', NULL, NULL, 0, NULL, NULL, 2, 'org.jeecg.modules.hwz:test_order_main:delete', '1', NULL, 0, NULL, 1, 0, 0, 0, NULL, 'admin', '2022-12-12 11:34:52', NULL, NULL, 0, 0, '1', 0);
-- 批量删除
INSERT INTO sys_permission(id, parent_id, name, url, component, is_route, component_name, redirect, menu_type, perms, perms_type, sort_no, always_show, icon, is_leaf, keep_alive, hidden, hide_tab, description, create_by, create_time, update_by, update_time, del_flag, rule_flag, status, internal_or_external)
VALUES ('2022121211349670524', '2022121211349670520', '批量删除测试订单主表', NULL, NULL, 0, NULL, NULL, 2, 'org.jeecg.modules.hwz:test_order_main:deleteBatch', '1', NULL, 0, NULL, 1, 0, 0, 0, NULL, 'admin', '2022-12-12 11:34:52', NULL, NULL, 0, 0, '1', 0);
-- 导出excel
INSERT INTO sys_permission(id, parent_id, name, url, component, is_route, component_name, redirect, menu_type, perms, perms_type, sort_no, always_show, icon, is_leaf, keep_alive, hidden, hide_tab, description, create_by, create_time, update_by, update_time, del_flag, rule_flag, status, internal_or_external)
VALUES ('2022121211349670525', '2022121211349670520', '导出excel_测试订单主表', NULL, NULL, 0, NULL, NULL, 2, 'org.jeecg.modules.hwz:test_order_main:exportXls', '1', NULL, 0, NULL, 1, 0, 0, 0, NULL, 'admin', '2022-12-12 11:34:52', NULL, NULL, 0, 0, '1', 0);
-- 导入excel
INSERT INTO sys_permission(id, parent_id, name, url, component, is_route, component_name, redirect, menu_type, perms, perms_type, sort_no, always_show, icon, is_leaf, keep_alive, hidden, hide_tab, description, create_by, create_time, update_by, update_time, del_flag, rule_flag, status, internal_or_external)
VALUES ('2022121211349670526', '2022121211349670520', '导入excel_测试订单主表', NULL, NULL, 0, NULL, NULL, 2, 'org.jeecg.modules.hwz:test_order_main:importExcel', '1', NULL, 0, NULL, 1, 0, 0, 0, NULL, 'admin', '2022-12-12 11:34:52', NULL, NULL, 0, 0, '1', 0);