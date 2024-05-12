provider "aws" { // AWSにリソース作るという宣言
  profile = "terraform" //認証情報管理に使用されるもの
  region = "ap-northeast-1"
}

resource "aws_instance" "hello-world" { // EC2インスタンス作成
  ami = "ami-0d0150aa305b7226d" // Amazon Machine Image　仮想サーバーイメージ インスタンスのテンプレート
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
  // インスタンス起動時に実行されるスクリプト(user_data)
  user_data = <<EOF
#!/bin/bash
amazon-linux-extras install -y nginx1.12
systemctl start nginx
EOF  
}