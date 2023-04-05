# main

module "cdn" {
  source      = "./modules/s3_cloudfront"
  providers = {
    aws.global = aws.global
  }

  name        = "pegasustechnology"
  domain_name = "pegasus-technology.co.uk"
}

resource "aws_s3_object" "this" {
  for_each = fileset("./src", "*")
  bucket   = module.cdn.bucket_name
  key      = each.value
  source   = "./src/${each.value}"
  etag     = filemd5("./src/${each.value}")
  content_type = "text/html"
}