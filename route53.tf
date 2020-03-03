resource "aws_route53_zone" "primary" {
  name = "example.com"
}

resource "aws_route53_record" "www" {
  zone_id = "${aws_route53_zone.primary.zone_id}"
  name    = "www.${aws_route53_zone.primary}"
  type    = "A"
  ttl     = "3600"
  records = ["${lookup(var.route, "app-1")}"]
}
