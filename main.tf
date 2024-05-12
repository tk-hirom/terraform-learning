provider "aws" { // AWSにリソース作るという宣言
  profile = "terraform" //認証情報管理に使用されるもの
  region = "ap-northeast-1"
}

resource "aws_instance" "hello-world" { // EC2インスタンス作成
  ami = "ami-0ab3794db9457b60a" // Amazon Machine Image　仮想サーバーイメージ インスタンスのテンプレート
  instance_type = "t2.micro"
}