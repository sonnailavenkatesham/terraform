variable "instances" {
    type = map(string)
    default = {
       mongodb = "t2.micro"
       catalogue = "t2.micro"
       cart = "t2.micro"
       user = "t2.micro"
       mysql = "t2.micro"
       rabbitMQ = "t2.micro"
       redis = "t2.micro"
       shipping = "t2.micro"
       payment = "t2.micro"
       web = "t2.micro"
    }
  
}