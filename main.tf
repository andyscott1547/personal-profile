# main

module "cdn" {
  source      = "./modules/s3_cloudfront"
  name        = "pegasustechnology"
  domain_name = "pegasus-technology.co.uk"
}