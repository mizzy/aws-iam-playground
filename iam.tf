resource "aws_iam_user" "foo" {
  name = "foo"
  path = "/"
}

resource "aws_iam_access_key" "foo" {
  user    = "${aws_iam_user.foo.name}"
  #pgp_key = "keybase:mizzy"
}

output "secret" {
  # value = "${aws_iam_access_key.foo.encrypted_secret}"
  value = "${aws_iam_access_key.foo.secret}"
}
