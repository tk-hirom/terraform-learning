data "aws_prefix_list" "s3_prefix_list" {
  name = "com.amazonaws.*.s3" // S3のIPアドレス群をまとめて指定できるもの
}