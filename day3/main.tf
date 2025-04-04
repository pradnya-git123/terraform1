        # create VPC                                                        
        resource "aws_vpc" "new" {
        cidr_block = "10.0.0.0/24"
        tags = {
          Name= "dev1"
        }
}
 # create Internet gateway & attach to VPC
      resource "aws_internet_gateway" "cust" {
        vpc_id = aws_vpc.new.id
        tags = {
          Name = "cust IG"
        
        }
        
      }
      #create subnet
     
     resource "aws_subnet" "name" {
            vpc_id            = aws_vpc.new.id
            cidr_block        = "10.0.0.0/25" # ✅ Valid subnet CIDR
            availability_zone = "us-east-1a"

        tags = {
          Name = "cust_subnet"
        }
    
        
      }
      
      # create route table and attach to Internet Gateway (edit routes)
      resource "aws_route_table" "route" {
           vpc_id = aws_vpc.new.id

     route {
        gateway_id = aws_internet_gateway.cust.id
        cidr_block = "0.0.0.0/0" 
        
     }   
       }
       #subnet association add subnets into Route Table
       resource "aws_route_table_association" "aaa"{
        subnet_id = aws_subnet.name.id
        route_table_id = aws_route_table.route.id

       }
       #create security groups
       resource "aws_security_group" "firstsg" {
        name = "firstsg"
        description = "allows all ssh and http traffic"
        vpc_id = aws_vpc.new.id
        tags = {
          Name = "First Sg"

        }
        ingress {
    description      = "SSH"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  ingress {
    description      = "HTTP"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  }
  #launch Instance
  resource "aws_instance" "newec2" {
     ami =  "ami-08b5b3a93ed654d19"
     instance_type = "t2.micro"
     key_name = "terraday1"
     subnet_id = aws_subnet.name.id
     vpc_security_group_ids = [aws_security_group.firstsg.id]


    
  }


        
         
       

         
       