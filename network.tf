resource "aws_vpc" "vpc" {
  cidr_block                       = "192.168.0.0/20" // VPCのIPアドレスの範囲
  instance_tenancy                 = "default"        // インスタンスがどのようなサーバーで動くかを規定 defaultだと他のユーザーとサーバー共有している状態
  enable_dns_support               = true             // VPC内のインスタンスがAWSのDNS使って名前解決できるかどうかの設定　自前でやるならfalse
  enable_dns_hostnames             = true             // DNSホスト名をインスタンスに割り振るかどうか 降らないとIPアドレスで指定することになる
  assign_generated_ipv6_cidr_block = false            // IPv4のみ

  tags = {
    Name   = "${var.project}-${var.environment}-vpc"
    Projec = var.project
    Env    = var.environment
  }
}