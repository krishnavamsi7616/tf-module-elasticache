resource "aws_elasticache_cluster" "main" {
  cluster_id           = "${local.TAG_PREFIX}-cluster"
  engine_version       = var.ENGINE_VERSION
  engine               = var.ENGINE
  node_type            = var.INSTANCE_CLASS
  num_cache_nodes      = var.NUMBER_OF_NODES
  parameter_group_name = aws_elasticache_parameter_group.main.name
  port                 = var.PORT
  security_group_ids = [aws_security_group.main.id]
  subnet_group_name = aws_elasticache_subnet_group.main.name
}