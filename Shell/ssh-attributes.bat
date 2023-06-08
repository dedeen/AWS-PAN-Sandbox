:  Windows batch file to change attributes on AWS keypair.pem file so it 
:    can be used to ssh from windows to EC2. 
:  First download the .pem file to your windows system that was used upon
:    creation of the EC2 instance. You need to change the file name 
:    listed here as an example. 
:
icacls terraform-key-pair.476d.pem /reset
icacls terraform-key-pair.476d.pem /grant:r %username%:(R)
icacls terraform-key-pair.476d.pem /inheritance:r
:
:  Then ssh -i terraform-key-pair.476d.pem ec2-user@54.202.195.90
:    with correct pem file name and instance IP address. 
