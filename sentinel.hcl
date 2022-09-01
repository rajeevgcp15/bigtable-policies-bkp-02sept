module "tfplan-functions" {
    source = "./common-functions/tfplan-functions/tfplan-functions.sentinel"
}

module "tfstate-functions" {
    source = "./common-functions/tfstate-functions/tfstate-functions.sentinel"
}

module "tfconfig-functions" {
    source = "./common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}

module "generic-functions" {
    source = "./common-functions/generic-functions/generic-functions.sentinel"
}

mock "tfplan/v2" {
  module {
    source = "mock1/mock-tfplan-v2-modified.sentinel"
  }
}
/*
mock "tfstate/v2" {
  module {
    source = "mocks/mock5-algo-pass/mock-tfstate-v2.sentinel"
  }
}
mock "tfconfig/v2" {
  module {
    source = "apigee-rule1/apigee-mocks1/mock-tfconfig-v2.sentinel"
  }
}
*/