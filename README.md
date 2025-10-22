# week6_vpc
This is a creation of a VPC with 3 public and 6 private subnets. A ec2 instance in the public subnet with a website.
The files that should not be modified are the tfstate file and the lock.hcl file.
I used Aarons github repo to test my system and get the original .gitignore file that i copy into new folders:
curl https://raw.githubusercontent.com/aaron-dm-mcdonald/Class7-notes/refs/heads/main/101825/check.sh | bash

I start off in the Terraform directory and make a new folder for the project that i will we working on.
I then copy the .gitignore into that folder.
I then change directories into that folder.
Inside that folder i then create the following files using touch:
0-auth.tf
1-vpc.tf
2-subnets.tf
3-igw.tf
4-nat.tf
5-route.tf
6-sg01-all.tf
12-Route53.tf
ec2.tf

Inside of each file i configured what i have listed:
