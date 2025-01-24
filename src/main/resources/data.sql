--roles
INSERT INTO tb_role (authority) VALUES ('ROLE_USER');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

--users
INSERT INTO tb_user (id, name, email, phone, created_at, password ) VALUES ('a7265f8f-c8e2-40e9-938f-e51d7dd7bef6', 'Bob admin', 'bob@gmail.com', '(22)99140-2018', NOW(), '123456');
INSERT INTO tb_user (id, name, email, phone, created_at, password) VALUES ('ca230c13-25eb-4c11-8284-d7e1ee7ed91f', 'Ana user', 'ana@gmail.com', '(80)99912-1199', NOW(), '123456');
--users-role
INSERT INTO tb_user_role (user_id, role_id) VALUES ('a7265f8f-c8e2-40e9-938f-e51d7dd7bef6', 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES ('ca230c13-25eb-4c11-8284-d7e1ee7ed91f', 1);

