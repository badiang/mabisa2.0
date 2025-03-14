-- the super admin permissions
insert into permissions (
  super_admin_create,
  super_admin_read,
  super_admin_delete,
  users_create,
  users_delete,
  users_update,
  users_read,
  roles_create,
  roles_delete,
  roles_update,
  roles_read,
	criteria_create,
  criteria_read,
  criteria_update,
  criteria_delete,
	assessment_submissions_create,
  assessment_submissions_read,
  assessment_submissions_update,
  assessment_submissions_delete,
  assessment_submissions_approve_disapprove,
	assessment_comments_create,
  assessment_comments_read,
  assessment_comments_update,
  assessment_comments_delete,
	map_read,
	reports_read,
  reports_generate
)
values (
  true,
  true,
  true,
  true,
  true,
  true,
  true,
  true,
  true,
  true,
  true,
  true,
  true,
  true,
  true,
  true,
  true,
  true,
  true,
  true,
  true,
  true,
  true,
  true,
  true,
  true,
  true
) ;

-- the super admin role
INSERT INTO roles (name, allow_bar, gen_perms)
values ('Super Admin', false, 1);


-- the super admin user account
insert into users (full_name, username, password, email, mobile_num, role_id)
values (
  'Super Admin', 
  'admin', 
  '$2y$10$yfE11dwq71p0Zho2ZJyluuB7jiYR.jbEWg0Bustga2nIjRFZRHP9m', 
  'admin@gmail.com',
  '9123456789',
  1,
  );

  insert into user_roles (user_id)
  values (
    1
  );